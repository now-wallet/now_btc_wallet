import 'package:dartz/dartz.dart';
import 'package:validators/validators.dart';
import 'package:now_btc_wallet/app/core/failures/failures.dart';

// validates password
Either<BdkFailure<String>, String> validatePassword(String input) {
  if (input.length >= 3) {
    return Right(input);
  } else {
    return const Left(BdkFailure.invalidPassword());
  }
}

// validates URL
Either<BdkFailure<String>, String> validateUrl(String input) {
  if (input.endsWith('')) {
    return Right(input);
  } else {
    return const Left(BdkFailure.invalidBlockchainUrl());
  }
}

// validates InputField
Either<BdkFailure<String>, String> validateInputField(String input) {
  if (input.endsWith('')) {
    return Right(input);
  } else {
    return const Left(BdkFailure.invalidString());
  }
}

// validates Mnemonic
Either<BdkFailure<String>, String> validateMnemonic(String input) {
  if (input.length >= 12) {
    return Right(input);
  } else {
    return const Left(BdkFailure.invalidMnemonic());
  }
}
