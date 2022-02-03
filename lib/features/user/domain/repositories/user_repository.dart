import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/user_model.dart';

abstract class UserRepository {
  Future<Either<FailureData, UserModel>> requestGetListUser();
}
