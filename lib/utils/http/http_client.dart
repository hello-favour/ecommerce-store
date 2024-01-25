import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpClient {
  static const String _baseUrl = "";

  //HELPER METHOD TO MAKE GET REQUEST
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse("$_baseUrl/$endPoint"));
    return _handleResponse(response);
  }

  //HELPER METHOD TO MAKE POST REQUEST
  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic data) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/$endPoint"),
      headers: {"Content-Type": "application/json"},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //HELPER METHOD TO MAKE PUT REQUEST
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/$endPoint"),
      headers: {"Content-Type": "application/json"},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //HELPER METHOD TO MAKE DELETE REQUEST
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.post(Uri.parse("$_baseUrl/$endPoint"));
    return _handleResponse(response);
  }

  //HANDLE THE HTTP RESPONSE
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("failed to load data: ${response.statusCode}");
    }
  }
}
