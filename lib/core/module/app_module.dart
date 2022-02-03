import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/endpoints.dart';

@module
abstract class AppModule {
  @singleton
  Dio get dio => Dio(BaseOptions(baseUrl: Endpoints.baseUrl, headers: {'app-id': Endpoints.appId}));

  @singleton
  Connectivity get connectivity => Connectivity();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
