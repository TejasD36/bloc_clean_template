import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../constants/service_endpoints.dart';
import '../../models/dtos/water_product_dto.dart';
import 'water_product_remote_datasource.dart';

class WaterProductRemoteDatasourceImpl implements WaterProductRemoteDatasource {
  const WaterProductRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, WaterProductsDto>> getProducts() {
    return apiService
        .getApi<WaterProductsDto>(
          ServiceEndpoints.waterBottleProducts,
          const ObjectMapper(WaterProductsDto.fromJson),
        )
        .mapEntity((data) => data);
  }
}
