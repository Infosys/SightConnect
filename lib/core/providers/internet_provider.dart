import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var internetProvider =
    StateNotifierProvider<InternetProvider, AsyncValue<ConnectivityResult>>(
  (ref) => InternetProvider(),
);

class InternetProvider extends StateNotifier<AsyncValue<ConnectivityResult>> {
  InternetProvider() : super(const AsyncValue.loading()) {
    Connectivity().onConnectivityChanged.listen((event) {
      state = AsyncValue.data(event);
    });
  }
}
