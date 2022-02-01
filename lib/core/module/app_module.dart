import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/core/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @singleton
  Dio get dio => Dio(BaseOptions(baseUrl: baseUrl, headers: {'app-id': appId}));

  @singleton
  Connectivity get connectivity => Connectivity();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
