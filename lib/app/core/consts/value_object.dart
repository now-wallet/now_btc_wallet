import 'package:dartz/dartz.dart';
import 'package:now_btc_wallet/app/core/errors/errors.dart';
import 'package:now_btc_wallet/app/core/failures/failures.dart';

abstract class ValueObject<T> {
  Either<BdkFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold(
        (left) => throw UnexpectedValueError(left), (right) => right);
  }

  bool isValid() => value.isRight();

  Either<BdkFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => Left(l), (r) => const Right(unit));
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => '(value: $value)';
}
