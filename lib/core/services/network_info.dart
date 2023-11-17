import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var connectivityProvider =
    Provider<NetworkInfo>((ref) => NetworkInfoImpl(Connectivity()));

abstract class NetworkInfo {
  Future<bool> isConnected();
}

class NetworkInfoImpl implements NetworkInfo {
  Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> isConnected() {
    return connectivity.checkConnectivity().then((value) {
      if (value == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    });
  }
}
