import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core.dart';
import '../../domain/entities/address_entity.dart';
import '../bloc/address_bloc.dart';
import '../bloc/address_event.dart';
import '../bloc/address_state.dart';
import 'add_address_screen.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key, this.selectionArgs});

  final AddressSelectionArgs? selectionArgs;

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  late final AddressBloc _addressBloc;
  StreamSubscription<AddressState>? _addressSubscription;
  List<AddressEntity> _addresses = const [];
  AddressEntity? _selectedAddress;
  bool _isLoading = true;
  String? _error;

  static const _fallbackLocation = SavedMapLocation(
    title: 'Address',
    subtitle: 'Select or add an address',
    position: LatLng(18.5204, 73.8567),
    icon: Icons.home,
  );

  @override
  void initState() {
    super.initState();
    _addressBloc = sl<AddressBloc>();
    _addressSubscription = _addressBloc.stream.listen(_onAddressState);
    _addressBloc.add(const AddressEvent.started());
  }

  @override
  void dispose() {
    _addressSubscription?.cancel();
    _addressBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading && _addresses.isEmpty) {
      return const AppScaffold(body: Center(child: CircularProgressIndicator()));
    }

    final selectedLocation = _selectedAddress == null ? _fallbackLocation : _toLocation(_selectedAddress!);

    return AppScaffold(
      appBar: AppBar(title: const Text("Address"), centerTitle: false),
      safeArea: false,
      backgroundColor: context.appColors.surfaceSoft,
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.fromLTRB(20.w, 14.h, 20.w, 18.h),
        child: SizedBox(
          height: 56,
          child: ElevatedButton(onPressed: _selectedAddress == null ? null : _confirmSelection, child: const Text('Confirm Location')),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 12),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_error != null) _AddressError(message: _error!, onRetry: _reload),
            _MapPreview(location: selectedLocation),
            const SizedBox(height: 12),
            Text(
              'Saved Locations',
              style: context.textTheme.titleLarge?.copyWith(color: context.appColors.textStrong, fontSize: 23, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 14),
            _SavedLocationGrid(
              selectedLocation: selectedLocation,
              locations: _addresses.map(_toLocation).toList(),
              onSelected: (location) => setState(() {
                _selectedAddress = _addresses.firstWhere((address) => address.id == location.id);
              }),
              onAdd: _addAddress,
              onEdit: _editLocation,
            ),
          ],
        ),
      ),
    );
  }

  void _onAddressState(AddressState state) {
    if (!mounted) return;
    switch (state) {
      case AddressLoading():
        setState(() => _isLoading = true);
      case AddressFailure(:final message):
        setState(() {
          _isLoading = false;
          _error = message;
        });
      case AddressSuccess(:final addresses):
        setState(() {
          _isLoading = false;
          _error = null;
          _addresses = addresses;
          _selectedAddress ??= addresses.isEmpty ? null : addresses.first;
        });
      case AddressInitial():
        break;
    }
  }

  void _reload() => _addressBloc.add(const AddressEvent.started());

  Future<void> _addAddress() async {
    await context.push(AppRoute.addAddress.path);
    _reload();
  }

  void _confirmSelection() {
    final address = _selectedAddress;
    if (address == null) return;
    if (widget.selectionArgs == null) {
      _showMessage('Location confirmed for ${_toLocation(address).title}');
      return;
    }
    context.pop(
      AddressSelectionResult(
        address: address,
        capacityId: widget.selectionArgs!.capacityId,
        waterTypeId: widget.selectionArgs!.waterTypeId,
        flowSlug: widget.selectionArgs!.flowSlug,
      ),
    );
  }

  void _showMessage(String message) {
    if (!mounted) {
      return;
    }
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  void _editLocation(SavedMapLocation location) {
    context
        .push(
          AppRoute.addAddress.path,
          extra: AddAddressArgs(
            id: location.id == 0 ? null : location.id,
            nickname: location.title,
            position: location.position,
            flat: location.flat,
            street: location.street,
            pinCode: location.pinCode,
            landmark: location.landmark,
            type: location.type,
            state: location.state,
            city: location.city,
          ),
        )
        .then((_) => _reload());
  }

  SavedMapLocation _toLocation(AddressEntity address) => SavedMapLocation(
    id: address.id,
    title: address.type[0].toUpperCase() + address.type.substring(1),
    subtitle: [address.flatNumberOrBuildingName, address.areaStreetName, address.city].where((value) => value.trim().isNotEmpty).join(', '),
    position: LatLng(address.latitude, address.longitude),
    icon: address.type.toLowerCase() == 'office' ? Icons.work : Icons.home,
    flat: address.flatNumberOrBuildingName,
    street: address.areaStreetName,
    pinCode: address.pincode,
    landmark: address.landmark,
    type: address.type,
    state: address.state,
    city: address.city,
  );
}

class AddressSelectionArgs {
  const AddressSelectionArgs({this.capacityId = '', this.waterTypeId = '', this.flowSlug = ''});

  final String capacityId;
  final String waterTypeId;
  final String flowSlug;
}

class AddressSelectionResult {
  const AddressSelectionResult({required this.address, required this.capacityId, required this.waterTypeId, this.flowSlug = ''});

  final AddressEntity address;
  final String capacityId;
  final String waterTypeId;
  final String flowSlug;
}

class _AddressError extends StatelessWidget {
  const _AddressError({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Row(
      children: [
        Expanded(child: Text(message)),
        IconButton(onPressed: onRetry, icon: const Icon(Icons.refresh)),
      ],
    ),
  );
}

class _MapPreview extends StatefulWidget {
  const _MapPreview({required this.location});

  final SavedMapLocation location;

  @override
  State<_MapPreview> createState() => _MapPreviewState();
}

class _MapPreviewState extends State<_MapPreview> {
  GoogleMapController? _controller;

  @override
  void didUpdateWidget(covariant _MapPreview oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.location.position != widget.location.position) {
      _controller?.animateCamera(CameraUpdate.newLatLngZoom(widget.location.position, 15));
    }
  }

  @override
  Widget build(BuildContext context) {
    final marker = Marker(
      markerId: const MarkerId('selected-location'),
      position: widget.location.position,
      infoWindow: InfoWindow(title: widget.location.title, snippet: widget.location.subtitle),
    );

    return Container(
      height: 300,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: const Color(0xFFE6E9EC), borderRadius: BorderRadius.circular(28)),
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(target: widget.location.position, zoom: 15),
            markers: {marker},
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            mapToolbarEnabled: false,
            gestureRecognizers: const {Factory<OneSequenceGestureRecognizer>(EagerGestureRecognizer.new)},
            onMapCreated: (controller) => _controller = controller,
          ),
          Positioned(left: 18, right: 18, bottom: 18, child: _PinnedLocationCard(location: widget.location)),
        ],
      ),
    );
  }
}

class _PinnedLocationCard extends StatelessWidget {
  const _PinnedLocationCard({required this.location});

  final SavedMapLocation location;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.appColors.surface,
      borderRadius: BorderRadius.circular(18),
      elevation: 5,
      shadowColor: context.appColors.shadow,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(color: context.appColors.primarySoft, borderRadius: BorderRadius.circular(12)),
              child: Icon(Icons.explore_outlined, color: context.colors.primary, size: 27),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: context.colors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.text, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SavedLocationGrid extends StatelessWidget {
  const _SavedLocationGrid({
    required this.selectedLocation,
    required this.locations,
    required this.onSelected,
    required this.onAdd,
    required this.onEdit,
  });

  final SavedMapLocation selectedLocation;
  final List<SavedMapLocation> locations;
  final ValueChanged<SavedMapLocation> onSelected;
  final VoidCallback onAdd;
  final ValueChanged<SavedMapLocation> onEdit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final gap = constraints.maxWidth < 360 ? 12.0 : 16.0;
        final width = (constraints.maxWidth - gap) / 2;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (final location in locations)
              _SavedLocationCard(
                width: width,
                location: location,
                selected: selectedLocation.position == location.position,
                onTap: () => onSelected(location),
                onEdit: () => onEdit(location),
              ),
            _SavedLocationCard(
              width: width,
              location: const SavedMapLocation(
                title: 'Add New',
                subtitle: 'Search on map',
                position: LatLng(18.5204, 73.8567),
                icon: Icons.add,
              ),
              selected: false,
              onTap: onAdd,
              onEdit: null,
            ),
            if (locations.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'No saved address matches your search',
                  style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.textMuted),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _SavedLocationCard extends StatelessWidget {
  const _SavedLocationCard({
    required this.width,
    required this.location,
    required this.selected,
    required this.onTap,
    required this.onEdit,
  });

  final double width;
  final SavedMapLocation location;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    final primary = context.colors.primary;
    return Semantics(
      button: true,
      selected: selected,
      label: '${location.title}, ${location.subtitle}',
      child: Material(
        color: context.appColors.surface,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: width,
            height: 140,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: selected ? context.appColors.primarySoft : context.appColors.surface,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: selected ? primary : Colors.transparent, width: 1.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(color: selected ? primary : context.appColors.primarySoft, shape: BoxShape.circle),
                      child: Icon(location.icon, color: selected ? context.colors.onPrimary : primary, size: 26),
                    ),
                    const Spacer(),
                    if (onEdit != null)
                      IconButton(
                        tooltip: 'Edit ${location.title} address',
                        onPressed: onEdit,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
                        icon: Icon(Icons.edit_outlined, color: context.appColors.primary, size: 25),
                      ),
                  ],
                ),
                const Spacer(),
                Text(
                  location.title,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.appColors.textStrong,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  location.subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.text, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SavedMapLocation {
  const SavedMapLocation({
    required this.title,
    required this.subtitle,
    required this.position,
    required this.icon,
    this.id = 0,
    this.type = 'home',
    this.flat = '',
    this.street = '',
    this.pinCode = '',
    this.landmark = '',
    this.state = '',
    this.city = '',
  });

  final int id;
  final String title;
  final String subtitle;
  final LatLng position;
  final IconData icon;
  final String type;
  final String flat;
  final String street;
  final String pinCode;
  final String landmark;
  final String state;
  final String city;
}
