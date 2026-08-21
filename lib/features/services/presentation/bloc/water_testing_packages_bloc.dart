import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/water_testing_package_entity.dart';
import '../../domain/usecases/get_water_testing_packages_usecase.dart';

sealed class WaterTestingPackagesState {
  const WaterTestingPackagesState();
}

class WaterTestingPackagesInitial extends WaterTestingPackagesState {
  const WaterTestingPackagesInitial();
}

class WaterTestingPackagesLoading extends WaterTestingPackagesState {
  const WaterTestingPackagesLoading();
}

class WaterTestingPackagesSuccess extends WaterTestingPackagesState {
  const WaterTestingPackagesSuccess(this.packages);

  final List<WaterTestingPackageEntity> packages;
}

class WaterTestingPackagesFailure extends WaterTestingPackagesState {
  const WaterTestingPackagesFailure(this.message);

  final String message;
}

class WaterTestingPackagesBloc extends Cubit<WaterTestingPackagesState> {
  WaterTestingPackagesBloc({required this.usecase})
    : super(const WaterTestingPackagesInitial());

  final GetWaterTestingPackagesUsecase usecase;

  Future<void> load() async {
    emit(const WaterTestingPackagesLoading());
    final result = await usecase();
    result.fold(
      (failure) => emit(WaterTestingPackagesFailure(failure.message)),
      (data) => emit(WaterTestingPackagesSuccess(data.packages)),
    );
  }
}
