import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/features/posts/data/models/post_model.dart';
import 'package:retrofit/http.dart';

import '../../../../core/config/endpoints.dart';

part 'post_remote_data_source.g.dart';

abstract class PostRemoteDataSource {
  Future<PostModel> getListPost();
}

@RestApi()
@Injectable(as: PostRemoteDataSource)
abstract class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  @factoryMethod
  factory PostRemoteDataSourceImpl(Dio dio) = _PostRemoteDataSourceImpl;

  @GET(Endpoints.postsGetList)
  @override
  Future<PostModel> getListPost();
}
