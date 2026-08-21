import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core.dart';
import '../../domain/entities/address_input.dart';
import '../bloc/address_bloc.dart';
import '../bloc/address_event.dart';
import '../bloc/address_state.dart';
import '../services/google_places_service.dart';

class AddAddressArgs {
  const AddAddressArgs({
    this.id,
    required this.nickname,
    required this.position,
    this.flat = '',
    this.street = '',
    this.pinCode = '',
    this.landmark = '',
    this.type = 'home',
    this.state = 'Maharashtra',
    this.city = 'Pune',
  });

  final int? id;
  final String nickname;
  final LatLng position;
  final String flat;
  final String street;
  final String pinCode;
  final String landmark;
  final String type;
  final String state;
  final String city;
}

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key, this.args});

  final AddAddressArgs? args;

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  static const _initialPosition = LatLng(18.5204, 73.8567);

  final _searchController = TextEditingController();
  final _flatController = TextEditingController();
  final _streetController = TextEditingController();
  final _pinController = TextEditingController();
  final _landmarkController = TextEditingController();
  final _placesService = GooglePlacesService();
  late final AddressBloc _addressBloc;
  StreamSubscription<AddressState>? _addressSubscription;
  bool _isLocating = false;

  GoogleMapController? _mapController;
  Timer? _searchDebounce;
  List<PlaceSuggestion> _suggestions = const [];
  LatLng _markerPosition = _initialPosition;
  String _selectedAddress = 'Drag the marker or search to pin the exact address';
  String _nickname = 'Home';
  bool _isSearching = false;
  bool _isResolvingMarker = false;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _addressBloc = sl<AddressBloc>();
    _addressSubscription = _addressBloc.stream.listen(_onAddressState);
    final args = widget.args;
    if (args != null) {
      _nickname = args.nickname;
      _markerPosition = args.position;
      _selectedAddress = 'Selected address';
      _flatController.text = args.flat;
      _streetController.text = args.street;
      _pinController.text = args.pinCode;
      _landmarkController.text = args.landmark;
    }
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _addressSubscription?.cancel();
    _addressBloc.close();
    _searchController.dispose();
    _flatController.dispose();
    _streetController.dispose();
    _pinController.dispose();
    _landmarkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: const Text('Add New Address')),
      backgroundColor: context.appColors.surfaceSoft,
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.fromLTRB(20.w, 14.h, 20.w, 18.h),
        child: SizedBox(
          height: 56,
          child: ElevatedButton(
            onPressed: _isSaving ? null : _saveAddress,

            child: _isSaving
                ? const SizedBox.square(dimension: 22, child: CircularProgressIndicator(strokeWidth: 2))
                : const Text('Save Address'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSearchBar(
              controller: _searchController,
              isLoading: _isSearching,
              onChanged: _onSearchChanged,
              onSubmitted: (_) => _selectFirstSuggestion(),
              hintText: 'Search building, street, or area',
            ),
            const SizedBox(height: 16),
            _CurrentLocationButton(isLoading: _isLocating, onTap: _useCurrentLocation),
            if (_suggestions.isNotEmpty) ...[
              const SizedBox(height: 10),
              _PlaceSuggestionList(suggestions: _suggestions, onSelected: _selectSuggestion),
            ],
            const SizedBox(height: 16),
            _MapPicker(
              markerPosition: _markerPosition,
              selectedAddress: _selectedAddress,
              isResolvingMarker: _isResolvingMarker,
              onMapCreated: (controller) => _mapController = controller,
              onMarkerDragEnd: _moveMarkerFromDrag,
              onMapTap: _moveMarkerFromDrag,
              onUseDefaultLocation: () => _moveMarker(_initialPosition, resolveAddress: true),
            ),
            const SizedBox(height: 20),
            const _FieldLabel('Address Nickname'),
            _NicknamePicker(selected: _nickname, onSelected: (value) => setState(() => _nickname = value)),
            const SizedBox(height: 12),
            AppTextFormFieldWidget(
              controller: _flatController,
              label: 'Flat / House / Building Number',
              hintText: 'e.g. Penthouse 4B',
              prefixIcon: const Icon(Icons.business_outlined),
            ),
            const SizedBox(height: 22),
            AppTextFormFieldWidget(
              controller: _streetController,
              label: 'Area / Street Name',
              hintText: 'e.g. Blue Lagoon Street',
              prefixIcon: const Icon(Icons.map_outlined),
            ),

            const SizedBox(height: 22),

            AppTextFormFieldWidget(
              controller: _pinController,
              label: 'Pin Code',
              hintText: 'e.g. 416229',
              prefixIcon: const Icon(Icons.pin_drop_outlined),
              keyboardType: TextInputType.number,
              maxLength: 6,
              counterText: '',
            ),
            const SizedBox(height: 22),
            AppTextFormFieldWidget(
              controller: _landmarkController,
              label: 'Landmark (Optional)',
              hintText: 'e.g. Near City Park Entrance',
              prefixIcon: const Icon(Icons.flag_outlined),
            ),
          ],
        ),
      ),
    );
  }

  void _onSearchChanged(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 350), () => _searchPlaces(value));
  }

  Future<void> _searchPlaces(String value) async {
    if (value.trim().length < 3) {
      if (mounted) {
        setState(() {
          _suggestions = const [];
          _isSearching = false;
        });
      }
      return;
    }

    setState(() => _isSearching = true);
    try {
      final suggestions = await _placesService.autocomplete(value);
      if (!mounted) {
        return;
      }
      setState(() {
        _suggestions = suggestions;
        _isSearching = false;
      });
    } on DioException {
      if (!mounted) {
        return;
      }
      setState(() => _isSearching = false);
      Utils.showMessage(context, 'Could not search locations. Check the Maps API key setup.');
    }
  }

  Future<void> _selectFirstSuggestion() async {
    if (_suggestions.isNotEmpty) {
      await _selectSuggestion(_suggestions.first);
    }
  }

  Future<void> _useCurrentLocation() async {
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _isLocating = true);

    try {
      if (!await Geolocator.isLocationServiceEnabled()) {
        if (mounted) {
          Utils.showMessage(context, 'Turn on location services to continue');
        }
        return;
      }

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        if (mounted) {
          Utils.showMessage(
            context,
            permission == LocationPermission.deniedForever
                ? 'Location permission is blocked in Settings'
                : 'Location permission is required',
          );
        }
        return;
      }

      final position = await Geolocator.getCurrentPosition(locationSettings: const LocationSettings(accuracy: LocationAccuracy.high));
      if (!mounted) {
        return;
      }
      await _moveMarker(LatLng(position.latitude, position.longitude), resolveAddress: true);
      if (mounted) {
        Utils.showMessage(context, 'Map centered on your current location');
      }
    } on LocationServiceDisabledException {
      if (mounted) {
        Utils.showMessage(context, 'Turn on location services to continue');
      }
    } on PermissionDeniedException {
      if (mounted) {
        Utils.showMessage(context, 'Location permission is required');
      }
    } catch (_) {
      if (mounted) {
        Utils.showMessage(context, 'Could not get your current location');
      }
    } finally {
      if (mounted) {
        setState(() => _isLocating = false);
      }
    }
  }

  Future<void> _selectSuggestion(PlaceSuggestion suggestion) async {
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _isSearching = true);
    try {
      final place = await _placesService.resolvePlace(suggestion.placeId);
      if (!mounted || place == null) {
        return;
      }
      _applyResolvedPlace(place, searchText: suggestion.description);
    } on DioException {
      if (!mounted) {
        return;
      }
      setState(() => _isSearching = false);
      Utils.showMessage(context, 'Could not load this location');
    }
  }

  Future<void> _moveMarkerFromDrag(LatLng position) async {
    await _moveMarker(position, resolveAddress: true);
  }

  Future<void> _moveMarker(LatLng position, {required bool resolveAddress}) async {
    setState(() {
      _markerPosition = position;
      _suggestions = const [];
      _isResolvingMarker = resolveAddress;
    });
    await _mapController?.animateCamera(CameraUpdate.newLatLngZoom(position, 16));

    if (!resolveAddress) {
      return;
    }

    try {
      final place = await _placesService.reverseGeocode(position);
      if (!mounted) {
        return;
      }
      if (place == null) {
        setState(() => _isResolvingMarker = false);
        return;
      }
      _applyResolvedPlace(place);
    } on DioException {
      if (!mounted) {
        return;
      }
      setState(() => _isResolvingMarker = false);
      Utils.showMessage(context, 'Could not update address from marker');
    }
  }

  void _applyResolvedPlace(ResolvedPlace place, {String? searchText}) {
    setState(() {
      _markerPosition = place.position;
      _selectedAddress = place.formattedAddress.isNotEmpty ? place.formattedAddress : place.name;
      _searchController.text = searchText ?? _selectedAddress;
      _suggestions = const [];
      _isSearching = false;
      _isResolvingMarker = false;
      if (place.street.isNotEmpty) {
        _streetController.text = place.street;
      }
      if (place.pinCode.isNotEmpty) {
        _pinController.text = place.pinCode;
      }
    });
    _mapController?.animateCamera(CameraUpdate.newLatLngZoom(place.position, 16));
  }

  void _saveAddress() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_flatController.text.trim().isEmpty || _streetController.text.trim().isEmpty || _pinController.text.trim().length != 6) {
      Utils.showMessage(context, 'Please complete the required address fields');
      return;
    }
    _addressBloc.add(
      AddressEvent.save(
        id: widget.args?.id,
        input: AddressInput(
          type: _nickname.toLowerCase(),
          flatNumberOrBuildingName: _flatController.text.trim(),
          areaStreetName: _streetController.text.trim(),
          landmark: _landmarkController.text.trim(),
          pincode: _pinController.text.trim(),
          state: widget.args?.state ?? 'Maharashtra',
          city: widget.args?.city ?? 'Pune',
          latitude: _markerPosition.latitude,
          longitude: _markerPosition.longitude,
        ),
      ),
    );
  }

  void _onAddressState(AddressState state) {
    if (!mounted) return;
    switch (state) {
      case AddressLoading():
        setState(() => _isSaving = true);
      case AddressFailure(:final message):
        setState(() => _isSaving = false);
        Utils.showMessage(context, message);
      case AddressSuccess(:final savedAddress):
        if (savedAddress == null) return;
        setState(() => _isSaving = false);
        context.pop(savedAddress);
      case AddressInitial():
        break;
    }
  }
}

class _CurrentLocationButton extends StatelessWidget {
  const _CurrentLocationButton({required this.isLoading, required this.onTap});

  final bool isLoading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: FilledButton.icon(
        onPressed: onTap,
        icon: isLoading
            ? const SizedBox.square(dimension: 22, child: CircularProgressIndicator(strokeWidth: 2))
            : const Icon(Icons.my_location, size: 27),
        label: Text(isLoading ? 'Finding your location...' : 'Use Current Location'),
        style: FilledButton.styleFrom(
          backgroundColor: context.appColors.primarySoft,
          foregroundColor: context.colors.primary,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          textStyle: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class _PlaceSuggestionList extends StatelessWidget {
  const _PlaceSuggestionList({required this.suggestions, required this.onSelected});

  final List<PlaceSuggestion> suggestions;
  final ValueChanged<PlaceSuggestion> onSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.appColors.surface,
      borderRadius: BorderRadius.circular(14),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: suggestions.take(5).map((suggestion) {
          return ListTile(
            minLeadingWidth: 24,
            leading: Icon(Icons.place_outlined, color: context.colors.primary),
            title: Text(
              suggestion.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleSmall?.copyWith(color: context.appColors.textStrong),
            ),
            subtitle: suggestion.subtitle.isEmpty ? null : Text(suggestion.subtitle, maxLines: 1, overflow: TextOverflow.ellipsis),
            onTap: () => onSelected(suggestion),
          );
        }).toList(),
      ),
    );
  }
}

class _MapPicker extends StatelessWidget {
  const _MapPicker({
    required this.markerPosition,
    required this.selectedAddress,
    required this.isResolvingMarker,
    required this.onMapCreated,
    required this.onMarkerDragEnd,
    required this.onMapTap,
    required this.onUseDefaultLocation,
  });

  final LatLng markerPosition;
  final String selectedAddress;
  final bool isResolvingMarker;
  final ValueChanged<GoogleMapController> onMapCreated;
  final ValueChanged<LatLng> onMarkerDragEnd;
  final ValueChanged<LatLng> onMapTap;
  final VoidCallback onUseDefaultLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: const Color(0xFFC9E8E8), borderRadius: BorderRadius.circular(22)),
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(target: markerPosition, zoom: 15),
            markers: {
              Marker(
                markerId: const MarkerId('new-address-location'),
                position: markerPosition,
                draggable: true,
                onDragEnd: onMarkerDragEnd,
                infoWindow: const InfoWindow(title: 'Selected address'),
              ),
            },
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            mapToolbarEnabled: false,
            gestureRecognizers: const {Factory<OneSequenceGestureRecognizer>(EagerGestureRecognizer.new)},
            onMapCreated: onMapCreated,
            onTap: onMapTap,
            onLongPress: onMarkerDragEnd,
          ),
          Positioned(
            right: 14,
            top: 14,
            child: _MapActionButton(icon: Icons.my_location, label: 'Reset', onPressed: onUseDefaultLocation),
          ),
          Positioned(
            left: 14,
            right: 14,
            bottom: 14,
            child: _SelectedAddressCard(address: selectedAddress, isLoading: isResolvingMarker),
          ),
        ],
      ),
    );
  }
}

class _MapActionButton extends StatelessWidget {
  const _MapActionButton({required this.icon, required this.label, required this.onPressed});

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 20),
      label: Text(label),
      style: FilledButton.styleFrom(
        backgroundColor: context.appColors.surface,
        foregroundColor: context.appColors.textStrong,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        minimumSize: const Size(0, 46),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _SelectedAddressCard extends StatelessWidget {
  const _SelectedAddressCard({required this.address, required this.isLoading});

  final String address;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.appColors.surface,
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      shadowColor: context.appColors.shadow,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(color: context.appColors.primarySoft, borderRadius: BorderRadius.circular(12)),
              child: isLoading
                  ? const Padding(padding: EdgeInsets.all(12), child: CircularProgressIndicator(strokeWidth: 2))
                  : Icon(Icons.location_on_outlined, color: context.colors.primary, size: 26),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                address,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyMedium?.copyWith(color: context.appColors.textStrong, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.titleMedium?.copyWith(color: context.appColors.text, fontSize: 18, fontWeight: FontWeight.w700),
    );
  }
}

class _NicknamePicker extends StatelessWidget {
  const _NicknamePicker({required this.selected, required this.onSelected});

  final String selected;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 10,
      children: ['Home', 'Office', 'Other'].map((name) {
        final isSelected = selected == name;
        return Semantics(
          button: true,
          selected: isSelected,
          label: '$name address nickname',
          child: ChoiceChip(
            label: Text(name),
            selected: isSelected,
            onSelected: (_) => onSelected(name),
            showCheckmark: false,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            labelStyle: TextStyle(
              color: isSelected ? context.colors.onPrimary : context.appColors.text,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            selectedColor: context.colors.primary,
            backgroundColor: context.appColors.input,
            side: BorderSide.none,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
          ),
        );
      }).toList(),
    );
  }
}
