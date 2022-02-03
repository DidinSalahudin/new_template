import 'package:flutter/material.dart';

import '../../features/user/presentation/pages/user_add_page.dart';
import '../../features/user/presentation/pages/user_page.dart';

class RouterApp {
  static const String userPageRoute = '/';
  static const String userAddPageRoute = '/add_user';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case userPageRoute:
        return MaterialPageRoute(builder: (_) => const UserPage());
      case userAddPageRoute:
        return MaterialPageRoute(builder: (_) => const UserAddPage());
      default:
        return MaterialPageRoute(builder: (_) => const UserPage());
    }
  }
}
