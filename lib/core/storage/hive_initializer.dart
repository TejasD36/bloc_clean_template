import 'package:hive_ce_flutter/adapters.dart';

import '../../features/auth/data/models/dtos/user_dto.dart';
import '../../hive_registrar.g.dart';
import 'constants/hive_boxes.dart';

class HiveInitializer {
  HiveInitializer._();

  static Future<void> initialize() async {
    await Hive.initFlutter();

    Hive.registerAdapters();

    await Hive.openBox<UserDto>(HiveBoxes.user);
  }
}
