import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/features/user/data/models/user_model.dart';
import 'package:retrofit/http.dart';

part 'user_remote_data_source.g.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getListUser();
}

@RestApi()
@Injectable(as: UserRemoteDataSource)
abstract class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @factoryMethod
  factory UserRemoteDataSourceImpl(Dio dio) = _UserRemoteDataSourceImpl;

  @GET('/user')
  @override
  Future<UserModel> getListUser();
}
