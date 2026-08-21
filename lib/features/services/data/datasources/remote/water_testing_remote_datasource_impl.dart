import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../constants/service_endpoints.dart';
import '../../models/dtos/water_testing_packages_dto.dart';
import 'water_testing_remote_datasource.dart';

class WaterTestingRemoteDatasourceImpl implements WaterTestingRemoteDatasource {
  const WaterTestingRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, WaterTestingPackagesDto>> getPackages() {
    return apiService
        .getApi<WaterTestingPackagesDto>(
          ServiceEndpoints.waterTestingPackages,
          const ObjectMapper(WaterTestingPackagesDto.fromJson),
        )
        .mapEntity((data) => data);
  }

  @override
  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    int? addressId,
    required String sampleType,
    String? selectedPlan,
    required double totalPrice,
  }) {
    return apiService
        .postApi<Map<String, dynamic>>(
          ServiceEndpoints.bookingCheckout,
          const ObjectMapper(_BookingDataMapper.fromJson),
          body: {
            'offering_id': offeringId,
            if (addressId != null) 'user_address_id': addressId,
            'total_price': totalPrice,
            'booking_data': {
              'sample_type': sampleType,
              if (selectedPlan != null) 'selected_plan': selectedPlan,
            },
          },
        )
        .mapMessage()
        .then((result) => result.map((value) => value.message));
  }
}

class _BookingDataMapper {
  const _BookingDataMapper._();

  static Map<String, dynamic> fromJson(Map<String, dynamic> json) => json;
}
