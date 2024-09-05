import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_farmer_app/model/login.dart';
import 'package:smart_farmer_app/model/register.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.1.4:3000';
  static const String _login = '/auth';
  static const String _register = '/auth';

  final actor = const String.fromEnvironment('actor', defaultValue: 'customer');

  bool get isOwner => actor == 'owner';
  bool get isEmployee => actor == 'employee';
  bool get isCustomer => actor == 'customer';

  Future<RegisterResponse> register({
    required String email,
    required String password,
    required String name,
    required String phone,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl$_register/signup'),
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
        'nama': name,
        'role': 'pemilik',
        'phone': phone,
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      debugPrint(response.body);
      return RegisterResponse.fromJson(jsonDecode(response.body));
    } else {
      debugPrint(response.body);
      return RegisterResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl$_login/signin'),
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      return LoginResponse.fromJson(jsonDecode(response.body));
    }
  }
}