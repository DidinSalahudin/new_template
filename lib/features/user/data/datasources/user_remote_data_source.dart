import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/core/config/endpoints.dart';
import 'package:retrofit/http.dart';

import '../models/user_model.dart';

part 'user_remote_data_source.g.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getListUser();
}

@RestApi()
@Injectable(as: UserRemoteDataSource)
abstract class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @factoryMethod
  factory UserRemoteDataSourceImpl(Dio dio) = _UserRemoteDataSourceImpl;

  @GET(Endpoints.usersGetList)
  @override
  Future<UserModel> getListUser();
}
