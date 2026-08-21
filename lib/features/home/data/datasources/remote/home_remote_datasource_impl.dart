import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../../../auth/data/constants/auth_endpoints.dart';
import '../../models/dtos/home_dto.dart';
import 'home_remote_datasource.dart';

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  const HomeRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, HomeDto>> getHomeScreen() {
    return apiService
        .getApi<HomeDto>(
          AuthEndpoints.home,
          const ObjectMapper(HomeDto.fromJson),
        )
        .mapEntity((data) => data);
  }
}
