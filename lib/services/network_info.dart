/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var connectivityProvider =
    Provider<NetworkInfo>((ref) => NetworkInfoImpl(Connectivity()));
var internetProvider =
    FutureProvider((ref) => ref.watch(connectivityProvider).isConnected());

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
