import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/core/error/exception.dart';
import 'package:new_template/core/network/network_info.dart';
import 'package:new_template/features/user/data/datasources/user_local_data_source.dart';
import 'package:new_template/features/user/data/datasources/user_remote_data_source.dart';
import 'package:new_template/features/user/data/models/user_model.dart';
import 'package:new_template/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:new_template/features/user/domain/repositories/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final NetworkInfo networkInfo;
  final UserRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;

  UserRepositoryImpl(
    this.networkInfo,
    this.remoteDataSource,
    this.localDataSource,
  );
  @override
  Future<Either<Failure, UserModel>> requestGetListUser() async {
    if (await networkInfo.isConnected) {
      try {
        final users = await remoteDataSource.getListUser();
        if (kDebugMode) {
          print(users);
        }
        localDataSource.cacheUsers(users);

        return Right(users);
      } on DioError {
        return Left(ServerFailure());
      }
    } else {
      try {
        return Right(await localDataSource.getLastUsers());
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
