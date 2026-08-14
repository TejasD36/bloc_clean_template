import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../features/auth/data/models/dtos/user_dto.dart';
import '../storage/constants/hive_boxes.dart';
import '../storage/hive_storage_service.dart';
import '../storage/implementation/hive_storage_service_impl.dart';
import '../storage/implementation/secure_storage_service_impl.dart';
import '../storage/secure_storage_service.dart';

Future<void> initStorageDependencies(GetIt sl) async {
  sl.registerLazySingleton<SecureStorageService>(
    () => const SecureStorageServiceImpl(FlutterSecureStorage()),
  );
  sl.registerLazySingleton<HiveStorageService<UserDto>>(
    () => HiveStorageServiceImpl<UserDto>(Hive.box<UserDto>(HiveBoxes.user)),
  );
}
