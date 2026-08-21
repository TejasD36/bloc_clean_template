import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../constants/service_endpoints.dart';
import '../../models/dtos/plumbing_service_options_dto.dart';
import 'plumbing_remote_datasource.dart';

class PlumbingRemoteDatasourceImpl implements PlumbingRemoteDatasource {
  const PlumbingRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, PlumbingServiceOptionsDto>> getOptions() {
    return apiService
        .getApi<PlumbingServiceOptionsDto>(
          ServiceEndpoints.plumbingServiceOptions,
          const ObjectMapper(PlumbingServiceOptionsDto.fromJson),
        )
        .mapEntity((data) => data);
  }

  @override
  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    required int addressId,
    required List<String> optionIds,
  }) {
    return apiService
        .postApi<Map<String, dynamic>>(
          ServiceEndpoints.bookingCheckout,
          const ObjectMapper(_BookingDataMapper.fromJson),
          body: {
            'offering_id': offeringId,
            'user_address_id': addressId,
            'total_price': 0,
            'booking_data': {'service_option': optionIds.join(',')},
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
