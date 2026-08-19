import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core.dart';
import 'add_address_screen.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  SavedMapLocation _selectedLocation = _savedLocations.first;
  final _visibleLocations = _savedLocations;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(
          "Address",
          style: context.textTheme.displayMedium?.copyWith(
            color: context.appColors.textStrong,
            fontSize: 24,
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        centerTitle: false,
      ),
      padding: EdgeInsets.zero,
      safeArea: false,
      backgroundColor: context.appColors.surfaceSoft,
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(24, 14, 24, 18),
        child: SizedBox(
          height: 56,
          child: FilledButton(
            onPressed: () => _showMessage(
              'Location confirmed for ${_selectedLocation.title}',
            ),
            style: FilledButton.styleFrom(
              backgroundColor: context.colors.primary,
              foregroundColor: context.colors.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              textStyle: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            child: const Text('Confirm Location'),
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(24, 10, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _MapPreview(location: _selectedLocation),
              const SizedBox(height: 12),
              Text(
                'Saved Locations',
                style: context.textTheme.titleLarge?.copyWith(
                  color: context.appColors.textStrong,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 14),
              _SavedLocationGrid(
                selectedLocation: _selectedLocation,
                locations: _visibleLocations,
                onSelected: (location) =>
                    setState(() => _selectedLocation = location),
                onAdd: () => context.push(AppRoute.addAddress.path),
                onEdit: _editLocation,
              ),
            ],
          ),
        ),
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
    context.push(
      AppRoute.addAddress.path,
      extra: AddAddressArgs(
        nickname: location.title,
        position: location.position,
        flat: location.flat,
        street: location.street,
        pinCode: location.pinCode,
        landmark: location.landmark,
      ),
    );
  }
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
      _controller?.animateCamera(
        CameraUpdate.newLatLngZoom(widget.location.position, 15),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final marker = Marker(
      markerId: const MarkerId('selected-location'),
      position: widget.location.position,
      infoWindow: InfoWindow(
        title: widget.location.title,
        snippet: widget.location.subtitle,
      ),
    );

    return Container(
      height: 458,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFFE6E9EC),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: widget.location.position,
              zoom: 15,
            ),
            markers: {marker},
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            mapToolbarEnabled: false,
            gestureRecognizers: const {
              Factory<OneSequenceGestureRecognizer>(EagerGestureRecognizer.new),
            },
            onMapCreated: (controller) => _controller = controller,
          ),
          Positioned(
            left: 18,
            right: 18,
            bottom: 18,
            child: _PinnedLocationCard(location: widget.location),
          ),
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
              decoration: BoxDecoration(
                color: context.appColors.primarySoft,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.explore_outlined,
                color: context.colors.primary,
                size: 27,
              ),
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
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.appColors.text,
                      fontSize: 16,
                    ),
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
                selected: selectedLocation.title == location.title,
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
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.appColors.textMuted,
                  ),
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
            height: 150,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: selected
                  ? context.appColors.primarySoft
                  : context.appColors.surface,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selected ? primary : Colors.transparent,
                width: 1.5,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: selected
                            ? primary
                            : context.appColors.primarySoft,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        location.icon,
                        color: selected ? context.colors.onPrimary : primary,
                        size: 26,
                      ),
                    ),
                    const Spacer(),
                    if (onEdit != null)
                      IconButton(
                        tooltip: 'Edit ${location.title} address',
                        onPressed: onEdit,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(
                          minWidth: 40,
                          minHeight: 40,
                        ),
                        icon: Icon(
                          Icons.edit_outlined,
                          color: context.appColors.textMuted,
                          size: 20,
                        ),
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
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.appColors.text,
                    fontSize: 16,
                  ),
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
    this.flat = '',
    this.street = '',
    this.pinCode = '',
    this.landmark = '',
  });

  final String title;
  final String subtitle;
  final LatLng position;
  final IconData icon;
  final String flat;
  final String street;
  final String pinCode;
  final String landmark;
}

const _savedLocations = [
  SavedMapLocation(
    title: 'Home',
    subtitle: 'Shaniwar Peth, Pune',
    position: LatLng(18.5196, 73.8554),
    icon: Icons.home,
    street: 'Shaniwar Peth, Pune',
    pinCode: '411030',
  ),
  SavedMapLocation(
    title: 'Work',
    subtitle: 'EON IT Park, Kharadi',
    position: LatLng(18.5515, 73.9511),
    icon: Icons.work,
    street: 'EON IT Park, Kharadi',
    pinCode: '411014',
  ),
];
