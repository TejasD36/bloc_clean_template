import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const googleMapsApiKey = 'AIzaSyBWxJ3u_LqPZfyOGGytIt3ys_3cyR5vxzU';

class GooglePlacesService {
  GooglePlacesService({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<List<PlaceSuggestion>> autocomplete(String input) async {
    final query = input.trim();
    if (query.length < 3) {
      return const [];
    }

    final response = await _dio.get<Map<String, dynamic>>(
      'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      queryParameters: {'input': query, 'key': googleMapsApiKey, 'components': 'country:in'},
    );

    final predictions = response.data?['predictions'];
    if (predictions is! List) {
      return const [];
    }

    return predictions
        .whereType<Map<String, dynamic>>()
        .map(
          (item) => PlaceSuggestion(
            placeId: item['place_id'] as String? ?? '',
            title: item['structured_formatting'] is Map<String, dynamic>
                ? (item['structured_formatting']['main_text'] as String? ?? item['description'] as String? ?? '')
                : item['description'] as String? ?? '',
            subtitle: item['structured_formatting'] is Map<String, dynamic>
                ? (item['structured_formatting']['secondary_text'] as String? ?? '')
                : '',
            description: item['description'] as String? ?? '',
          ),
        )
        .where((item) => item.placeId.isNotEmpty && item.description.isNotEmpty)
        .toList();
  }

  Future<ResolvedPlace?> resolvePlace(String placeId) async {
    if (placeId.isEmpty) {
      return null;
    }

    final response = await _dio.get<Map<String, dynamic>>(
      'https://maps.googleapis.com/maps/api/place/details/json',
      queryParameters: {'place_id': placeId, 'key': googleMapsApiKey, 'fields': 'name,formatted_address,geometry,address_components'},
    );

    final result = response.data?['result'];
    if (result is! Map<String, dynamic>) {
      return null;
    }

    return _resolvedPlaceFromGoogleResult(result);
  }

  Future<ResolvedPlace?> reverseGeocode(LatLng position) async {
    final response = await _dio.get<Map<String, dynamic>>(
      'https://maps.googleapis.com/maps/api/geocode/json',
      queryParameters: {'latlng': '${position.latitude},${position.longitude}', 'key': googleMapsApiKey},
    );

    final results = response.data?['results'];
    if (results is! List || results.isEmpty || results.first is! Map<String, dynamic>) {
      return null;
    }

    return _resolvedPlaceFromGoogleResult(results.first as Map<String, dynamic>, fallbackPosition: position);
  }

  ResolvedPlace? _resolvedPlaceFromGoogleResult(Map<String, dynamic> result, {LatLng? fallbackPosition}) {
    final location = result['geometry'] is Map<String, dynamic> ? (result['geometry']['location'] as Map<String, dynamic>?) : null;
    final lat = (location?['lat'] as num?)?.toDouble() ?? fallbackPosition?.latitude;
    final lng = (location?['lng'] as num?)?.toDouble() ?? fallbackPosition?.longitude;
    if (lat == null || lng == null) {
      return null;
    }

    final components = <String, String>{};
    final rawComponents = result['address_components'];
    if (rawComponents is List) {
      for (final component in rawComponents.whereType<Map<String, dynamic>>()) {
        final value = component['long_name'] as String?;
        final types = component['types'];
        if (value == null || types is! List) {
          continue;
        }
        for (final type in types.whereType<String>()) {
          components[type] = value;
        }
      }
    }

    final route = components['route'] ?? components['sublocality'] ?? components['locality'] ?? '';
    final area = [components['sublocality_level_1'], components['locality']].where((part) => part != null && part.isNotEmpty).join(', ');

    return ResolvedPlace(
      name: result['name'] as String? ?? route,
      formattedAddress: result['formatted_address'] as String? ?? '',
      position: LatLng(lat, lng),
      street: route.isNotEmpty ? route : area,
      pinCode: components['postal_code'] ?? '',
    );
  }
}

class PlaceSuggestion {
  const PlaceSuggestion({required this.placeId, required this.title, required this.subtitle, required this.description});

  final String placeId;
  final String title;
  final String subtitle;
  final String description;
}

class ResolvedPlace {
  const ResolvedPlace({
    required this.name,
    required this.formattedAddress,
    required this.position,
    required this.street,
    required this.pinCode,
  });

  final String name;
  final String formattedAddress;
  final LatLng position;
  final String street;
  final String pinCode;
}
