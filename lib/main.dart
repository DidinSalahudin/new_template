import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/config/env.dart';
import 'core/config/router.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init Injection
  configureDependencies();

  // Load Environment
  await dotenv.load(fileName: Env.fileName);

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
      initialRoute: RouterConst.homePageRoute,
    );
  }
}
