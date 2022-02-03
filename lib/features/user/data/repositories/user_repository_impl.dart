import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_local_data_source.dart';
import '../datasources/user_remote_data_source.dart';
import '../models/user_model.dart';

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
  Future<Either<FailureData, UserModel>> requestGetListUser() async {
    if (await networkInfo.isConnected) {
      try {
        final users = await remoteDataSource.getListUser();
        if (kDebugMode) {
          print(users);
        }
        localDataSource.cacheUsers(users);

        return Right(users);
      } catch (e) {
        final message = ServerExceptions.getErrorMessage(ServerExceptions.getDioException(e));
        return Left(FailureMessage(message: message));
      }
    } else {
      try {
        return Right(await localDataSource.getLastUsers());
      } on CacheException {
        return const Left(FailureMessage(message: 'Offline'));
      }
    }
  }
}
