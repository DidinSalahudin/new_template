import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/helper/no_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/user_model.dart';
import '../repositories/user_repository.dart';

@injectable
class GetListUser implements Usecase<UserModel, NoParams> {
  final UserRepository _repository;

  GetListUser(this._repository);

  @override
  Future<Either<Failure, UserModel>> call(NoParams params) => _repository.requestGetListUser();
}
