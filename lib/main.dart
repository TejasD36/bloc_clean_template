import 'package:flutter/material.dart';

import 'app/bootstrap.dart';
import 'app/view/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Bootstrap.initialize();

  runApp(const App());
}
