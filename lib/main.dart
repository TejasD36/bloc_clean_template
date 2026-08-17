import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/bootstrap.dart';
import 'app/theme/app_color.dart';
import 'app/view/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColor.primary,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  await Bootstrap.initialize();

  runApp(const App());
}
