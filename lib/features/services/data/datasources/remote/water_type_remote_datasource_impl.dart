import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../constants/service_endpoints.dart';
import '../../models/dtos/water_type_dto.dart';
import 'water_type_remote_datasource.dart';

class WaterTypeRemoteDatasourceImpl implements WaterTypeRemoteDatasource {
  const WaterTypeRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, WaterTypesDto>> getWaterTypes() {
    return apiService
        .getApi<WaterTypesDto>(
          ServiceEndpoints.tankerWaterTypes,
          const ObjectMapper(WaterTypesDto.fromJson),
        )
        .mapEntity((data) => data);
  }
}
