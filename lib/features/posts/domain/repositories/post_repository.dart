import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/post_model.dart';

abstract class PostRepository {
  Future<Either<FailureData, PostModel>> requestGetListPost();
}
