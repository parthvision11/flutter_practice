import 'dart:developer';

import 'package:flutter/material.dart';

import 'api_service.dart';
import 'device_ip_service.dart';

class DeviceIpAddress extends StatefulWidget {
  const DeviceIpAddress({super.key});

  @override
  State<DeviceIpAddress> createState() => _DeviceIpAddressState();
}

class _DeviceIpAddressState extends State<DeviceIpAddress> {
  ApiService apiService = ApiService();
  DeviceIPService deviceIPService = DeviceIPService();
  String publicIPAddress = " - ";
  String deviceIP = " - ";

  @override
  void initState() {
    super.initState();
    _getIpAddress();
  }

  Future _getIpAddress() async {
    String? publicIPAddress = await apiService.fetchPublicIP();
    String? deviceIP = await deviceIPService.getDeviceIP();
    String? deviceName = await deviceIPService.getDeviceName();
    setState(() {
      log("Device Name: $deviceName");
      this.publicIPAddress = publicIPAddress ?? " - ";
      this.deviceIP = deviceIP ?? " - ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device IP Address'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Public IP (Internet IP)", style: TextStyle(fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.w600)),
            Text(publicIPAddress.toString(), style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600)),
            const SizedBox(height: 20),
            const Text("Device IP (WiFi)", style: TextStyle(fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.w600)),
            Text(deviceIP.toString(), style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      floatingActionButton: MaterialButton(
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          _getIpAddress();
        },
        color: Colors.blueAccent,
        child: const Text("Refresh", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
