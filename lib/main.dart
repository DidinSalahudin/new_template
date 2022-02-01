import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:new_template/core/config/router.dart';
import 'package:new_template/core/utils/constants.dart';

import 'core/config/environment.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await dotenv.load(fileName: Environment.fileName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "New Template",
      onGenerateRoute: RouterApp.generateRoute,
      initialRoute: userPageRoute,
    );
  }
}
