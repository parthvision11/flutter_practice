import 'package:network_info_plus/network_info_plus.dart';

class DeviceIPService {
  final NetworkInfo _networkInfo = NetworkInfo();

  Future<String?> getDeviceIP() async {
    try {
      String? ipAddress = await _networkInfo.getWifiIP();
      return ipAddress;
    } catch (e) {
      print('Error fetching device IP: $e');
      return null;
    }
  }

  Future<String?> getDeviceName() async {
    try {
      String? deviceName = await _networkInfo.getWifiName();
      return deviceName;
    } catch (e) {
      print('Error fetching device Name: $e');
      return null;
    }
  }
}
