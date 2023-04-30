import 'package:bdk_flutter/bdk_flutter.dart';
import 'package:flutter/material.dart';

class WalletDto {
  final String mnemonic;
  final String? password;
  final Network network;

  WalletDto({required this.mnemonic, this.password, required this.network});

  Map<String, dynamic> toJson() {
    return {
      "mnemonic": this.mnemonic,
      "password": this.password,
      "network": this.network.name.toString(),
    };
  }

  factory WalletDto.fromJson(Map<String, dynamic> json) {
    return WalletDto(mnemonic: json["mnemonic"], network: json["password"]);
  }
}
