import 'package:flutter/material.dart';
import 'package:new_template/core/utils/constants.dart';
import 'package:new_template/features/user/presentation/pages/user_page.dart';

class RouterApp {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case userPageRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
  }
}
