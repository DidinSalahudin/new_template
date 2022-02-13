import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/helper/no_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/post_model.dart';
import '../repositories/post_repository.dart';

@injectable
class GetListPost implements Usecase<PostModel, NoParams> {
  final PostRepository _repository;

  GetListPost(this._repository);

  @override
  Future<Either<FailureData, PostModel>> call(NoParams params) => _repository.requestGetListPost();
}
