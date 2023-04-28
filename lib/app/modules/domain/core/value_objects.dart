import 'package:bdk_flutter/bdk_flutter.dart';
import 'package:dartz/dartz.dart';
import 'package:now_btc_wallet/app/core/consts/value_object.dart';
import 'package:now_btc_wallet/app/core/failures/failures.dart';
import 'package:now_btc_wallet/app/modules/domain/core/validators.dart';

// value password
class Password extends ValueObject<String> {
  @override
  final Either<BdkFailure<String>, String> value;

  Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}

// value blockchain
class BlockchainUrl extends ValueObject<String> {
  @override
  final Either<BdkFailure<String>, String> value;

  BlockchainUrl._(this.value);

  factory BlockchainUrl(String input) {
    return BlockchainUrl._(validateUrl(input));
  }
}
