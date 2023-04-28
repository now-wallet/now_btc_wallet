import 'package:dartz/dartz.dart';
import 'package:now_btc_wallet/app/core/errors/errors.dart';
import 'package:now_btc_wallet/app/core/failures/failures.dart';

abstract class ValueObject<T> {
  Either<BdkFailure<T>, T> get value;

  // get or crash
  T getOrCrash() {
    return value.fold(
        (left) => throw UnexpectedValueError(left), (right) => right);
  }

  // check is valid
  bool isValid() => value.isRight();

  // get failure unit
  Either<BdkFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => Left(l), (r) => const Right(unit));
  }

  // operator
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  // hash code
  @override
  int get hashCode => value.hashCode;

  // to string
  @override
  String toString() => '(value: $value)';
}
