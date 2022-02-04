import 'package:flutter/material.dart';
import 'package:new_template/features/home/presentation/pages/home_page.dart';

import '../../features/user/presentation/pages/user_add_page.dart';
import '../../features/user/presentation/pages/user_page.dart';

class RouterConst {
  static const String homePageRoute = '/';
  static const String userPageRoute = '/user';
  static const String userAddPageRoute = '/add_user';
}

class RouterApp {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConst.homePageRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouterConst.userPageRoute:
        return MaterialPageRoute(builder: (_) => const UserPage());
      case RouterConst.userAddPageRoute:
        return MaterialPageRoute(builder: (_) => const UserAddPage());
      default:
        return MaterialPageRoute(builder: (_) => const UserPage());
    }
  }
}
