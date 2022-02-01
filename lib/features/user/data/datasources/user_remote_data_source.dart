import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/features/user/data/models/user_model.dart';
import 'package:retrofit/http.dart';

part 'user_remote_data_source.g.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getListUser();
}

@RestApi()
@injectable
abstract class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @factoryMethod
  factory UserRemoteDataSourceImpl(Dio dio) = _UserRemoteDataSourceImpl;

  @GET('/user')
  Future<List<UserModel>> getUsers();
}
