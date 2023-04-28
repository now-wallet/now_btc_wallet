import 'package:bdk_flutter/bdk_flutter.dart';
import 'package:dartz/dartz.dart';
import 'package:now_btc_wallet/app/core/consts/value_object.dart';
import 'package:now_btc_wallet/app/core/failures/failures.dart';
import 'package:now_btc_wallet/app/modules/domain/core/validators.dart';

// password validate
class Password extends ValueObject<String> {
  @override
  final Either<BdkFailure<String>, String> value;

  Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}

// mnemonic validation
class MnemonicStr extends ValueObject<String> {
  @override
  final Either<BdkFailure<String>, String> value;

  MnemonicStr._(this.value);

  factory MnemonicStr(String input) {
    return MnemonicStr._(validateMnemonic(input));
  }
}

// validate transactions
class TransactionAddress extends ValueObject<String> {
  @override
  final Either<BdkFailure<String>, String> value;

  TransactionAddress._(this.value);

  factory TransactionAddress(String input) {
    return TransactionAddress._(validateMnemonic(input));
  }
}

// validate blockchain url
class BlockchainUrl extends ValueObject<String> {
  @override
  final Either<BdkFailure<String>, String> value;

  BlockchainUrl._(this.value);

  factory BlockchainUrl(String input) {
    return BlockchainUrl._(validateUrl(input));
  }
}
