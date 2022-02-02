import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:new_template/core/network/network_info.dart';

import '../../mocks/generate_mocks.mocks.dart';

void main() {
  late NetworkInfoImpl networkInfoImpl;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockConnectivity = MockConnectivity();
    networkInfoImpl = NetworkInfoImpl(mockConnectivity);
  });

  group('isConnected', () {
    test(
      'Harus panggil Connectivity.checkConnectivity() untuk cek state jaringan',
      () async {
        when(mockConnectivity.checkConnectivity()).thenAnswer(
          (_) async => ConnectivityResult.wifi,
        );
      },
    );
  });
}
