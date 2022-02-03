import 'package:dartz/dartz.dart';
import 'package:new_template/core/error/failures.dart';

abstract class Usecase<Type, Params> {
  Future<Either<FailureData, Type>> call(Params params);
}
