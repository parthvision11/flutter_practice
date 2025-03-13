import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<String?> fetchPublicIP() async {
    try {
      Response response = await _dio.get('https://api.ipify.org/', queryParameters: {'format': 'json'});

      if (response.statusCode == 200) {
        return response.data['ip']; // Extract the IP address
      }
    } catch (e) {
      log('Error fetching IP: $e');
    }
    return null;
  }
}
