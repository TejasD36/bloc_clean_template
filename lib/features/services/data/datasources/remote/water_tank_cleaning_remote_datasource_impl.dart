import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../constants/service_endpoints.dart';
import '../../models/dtos/water_tank_cleaning_dto.dart';
import 'water_tank_cleaning_remote_datasource.dart';

class WaterTankCleaningRemoteDatasourceImpl
    implements WaterTankCleaningRemoteDatasource {
  const WaterTankCleaningRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, WaterTankCleaningDetailDto>> getDetail() {
    return apiService
        .getApi<WaterTankCleaningDetailDto>(
          ServiceEndpoints.waterTankCleaningDetail,
          const ObjectMapper(WaterTankCleaningDetailDto.fromJson),
        )
        .mapEntity((data) => data);
  }
}
