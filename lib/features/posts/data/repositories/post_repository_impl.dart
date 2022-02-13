import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/post_repository.dart';
import '../datasource/post_local_data_surce.dart';
import '../datasource/post_remote_data_source.dart';
import '../models/post_model.dart';

@Injectable(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  final NetworkInfo networkInfo;
  final PostRemoteDataSource remoteDataSource;
  final PostLocalDataSource localDataSource;

  PostRepositoryImpl(
    this.networkInfo,
    this.remoteDataSource,
    this.localDataSource,
  );
  @override
  Future<Either<FailureData, PostModel>> requestGetListPost() async {
    if (await networkInfo.isConnected) {
      try {
        final posts = await remoteDataSource.getListPost();
        if (kDebugMode) {
          print(posts);
        }
        localDataSource.cachePosts(posts);

        return Right(posts);
      } catch (e) {
        final message = ServerExceptions.getErrorMessage(ServerExceptions.getDioException(e));
        return Left(FailureMessage(message: message));
      }
    } else {
      try {
        return Right(await localDataSource.getLastPosts());
      } on CacheException {
        return const Left(FailureMessage(message: 'Offline'));
      }
    }
  }
}
