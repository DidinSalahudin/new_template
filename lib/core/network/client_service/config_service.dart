import 'package:dio/dio.dart';

class ConfigService {
  static Options getHeaders({String token = ""}) {
    var _headers = <String, dynamic>{};

    _headers['Accept'] = "application/json";
    if (token != '') {
      _headers['app-id'] = token;
    }

    return Options(headers: _headers);
  }
}
