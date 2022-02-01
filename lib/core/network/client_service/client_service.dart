// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_template/core/error/exception.dart';
import 'package:new_template/core/network/client_service/auth_service.dart';
import 'package:new_template/core/network/client_service/config_service.dart';

enum RequestType { GET, POST }

class ClientService {
  final Dio _dio = Dio();
  Options? _headersOption;

  Future<dynamic> _getToken() async {
    var _token = await AuthService.instance.getToken();
    _headersOption = ConfigService.getHeaders(token: _token);
  }

  Future<dynamic> request(
    String url,
    RequestType type,
    BuildContext context, {
    dynamic data,
    required bool useToken,
  }) async {
    Response? response;

    if (useToken) {
      await _getToken();
    } else {
      _headersOption = ConfigService.getHeaders();
    }

    try {
      switch (type) {
        case RequestType.GET:
          response = await _dio.get(url, options: _headersOption);
          break;
        case RequestType.POST:
          response = await _dio.post(url, data: data ?? 'null', options: _headersOption);
          break;
      }
      return json.decode(json.encode(response.data));
    } catch (e) {
      throw ServerException();
    }
  }
}
