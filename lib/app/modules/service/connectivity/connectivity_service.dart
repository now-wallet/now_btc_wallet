import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:now_btc_wallet/app/modules/domain/connectivity/iconnectivity_service.dart';

@LazySingleton(as: IConnectivityService)
class ConnectivityService extends IConnectivityService {
  final Connectivity connectivity;

  ConnectivityService({required this.connectivity});

  @override
  StreamSubscription<ConnectivityResult> checkConnectivity() {
    return connectivity.onConnectivityChanged.listen((result) => result);
  }
}
