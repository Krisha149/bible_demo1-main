import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'device_utils.dart';

class ApiService {
  static const String baseUrl = "https://vzmsfshr-8080.inc1.devtunnels.ms/api";

  static Future<http.Response> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    final deviceId = await DeviceUtils.getDeviceId();

    var request = http.MultipartRequest(
      'POST',
      Uri.parse("$baseUrl/app/v1/auth/register"),
    );

    request.headers['Accept'] = 'application/json';

    request.fields['name'] = name;
    request.fields['email'] = email;
    request.fields['password'] = password;
    request.fields['device'] = Platform.isAndroid ? 'android' : 'ios';
    request.fields['device_id'] = deviceId;

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    print("SIGNUP STATUS: ${response.statusCode}");
    print("SIGNUP BODY: ${response.body}");

    return response;
  }



  static Future<http.Response> login({
    required String email,
    required String password,
  }) async {
    final deviceId = await DeviceUtils.getDeviceId();

    final response = await http.post(
      Uri.parse("$baseUrl/app/v1/auth/login"),
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "email": email,
        "password": password,
        "device": Platform.isAndroid ? "android" : "ios",
        "device_id": deviceId,
      }),
    );

    print("LOGIN STATUS: ${response.statusCode}");
    print("LOGIN BODY: ${response.body}");

    return response;
  }



  // GET TOKEN
  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
