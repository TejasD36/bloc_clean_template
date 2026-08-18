import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../../../auth/data/constants/auth_endpoints.dart';
import '../../models/dtos/splash_screen_dto.dart';
import 'splash_remote_datasource.dart';

class SplashRemoteDatasourceImpl implements SplashRemoteDatasource {
  const SplashRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, SplashScreenDto>> getSplashScreen() {
    return apiService
        .getApi<SplashScreenDto>(AuthEndpoints.splashScreen, const ObjectMapper(SplashScreenDto.fromJson))
        .mapEntity((data) => data);
  }
}
