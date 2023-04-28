import 'package:dartz/dartz.dart';
import 'package:validators/validators.dart';
import 'package:now_btc_wallet/app/core/failures/failures.dart';

// validate password
Either<BdkFailure<String>, String> validatePasword(String input) {
  if (input.length >= 3) {
    return Right(input);
  } else {
    return const Left(BdkFailure.invalidPassword());
  }
}

// validate url
Either<BdkFailure<String>, String> validateUrl(String input) {
  if (input.endsWith('')) {
    return Right(input);
  } else {
    return const Left(BdkFailure.invalidBlockchainUrl());
  }
}

Either<BdkFailure<String>, String> validateInputField(String input) {
  if (input.endsWith('')) {
    return Right(input);
  } else {
    return const Left(BdkFailure.invalidString());
  }
}
