import 'package:fpdart/fpdart.dart';
import 'package:grocify/core/errors/failure.dart';

abstract interface class Usecase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}
