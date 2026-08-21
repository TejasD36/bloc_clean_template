import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../constants/service_endpoints.dart';
import '../../models/dtos/tanker_capacity_dto.dart';
import 'tanker_remote_datasource.dart';

class TankerRemoteDatasourceImpl implements TankerRemoteDatasource {
  const TankerRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, TankerCapacitiesDto>> getCapacities() {
    return apiService
        .getApi<TankerCapacitiesDto>(
          ServiceEndpoints.tankerCapacities,
          const ObjectMapper(TankerCapacitiesDto.fromJson),
        )
        .mapEntity((data) => data);
  }
}
