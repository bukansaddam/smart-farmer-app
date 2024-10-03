import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_farmer_app/model/detail_inventory.dart';
import 'package:smart_farmer_app/model/inventory.dart';
import 'package:smart_farmer_app/model/kandang.dart';
import 'package:smart_farmer_app/model/login.dart';
import 'package:smart_farmer_app/model/register.dart';
import 'package:http/http.dart' as http;
import 'package:smart_farmer_app/model/upload.dart';

class ApiService {
  static const String baseUrl = 'http://192.168.1.7:3000';
  static const String _login = '/auth';
  static const String _register = '/auth';
  static const String _inventory = '/inventory';
  static const String _kandang = '/kandang';

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

  Future<InventoryResponse> getInventory({
    required String token,
    required String idKandang,
    page = 1,
    pageSize = 10,
    jenis = '',
    name = '',
  }) async {
    final response = await http.get(
      Uri.parse(
          '$baseUrl$_inventory/kandang/$idKandang?page=$page&pageSize=$pageSize&jenis=$jenis&name=$name'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return InventoryResponse.fromJson(jsonDecode(response.body));
    } else {
      return InventoryResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future<DetailInventoryResponse> getDetailInventory({
    required String token,
    required String idInventory,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl$_inventory/$idInventory'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return DetailInventoryResponse.fromJson(jsonDecode(response.body));
    } else {
      return DetailInventoryResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future<UploadResponse> createInventory({
    required String token,
    required List<List<int>> images,
    required List<String> filenames,
    required String idKandang,
    required String nama,
    required String jenis,
    required int stock,
  }) async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('$baseUrl$_inventory'),
    );

    for (int i = 0; i < images.length; i++) {
      var multipartFile = http.MultipartFile.fromBytes(
        'images',
        images[i],
        filename: filenames[i],
      );
      request.files.add(multipartFile);
    }

    request.fields.addAll({
      'id_kandang': idKandang,
      'name': nama,
      'jenis': jenis,
      'stock': stock.toString(),
    });

    request.headers.addAll({
      'Authorization': 'Bearer $token',
    });

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 200) {
      return UploadResponse.fromJson(jsonDecode(response.body));
    } else {
      return UploadResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future<UploadResponse> updateStock({
    required String token,
    required String idInventory,
    required int stock,
  }) async {
    final response = await http.put(
      Uri.parse('$baseUrl$_inventory/$idInventory'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(<String, dynamic>{
        'stock': stock,
      }),
    );

    if (response.statusCode == 200) {
      return UploadResponse.fromJson(jsonDecode(response.body));
    } else {
      return UploadResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future<UploadResponse> updateInventory({
    required String token,
    required String id,
    List<List<int>>? images,
    List<String>? filenames,
    String? name,
    String? jenis,
    int? stock,
    List<String>? deletedImages,
  }) async {
    var request =
        http.MultipartRequest('PUT', Uri.parse('$baseUrl$_inventory/$id'));

    if (images != null) {
      for (int i = 0; i < images.length; i++) {
        var multipartFile = http.MultipartFile.fromBytes(
          'images',
          images[i],
          filename: filenames![i],
        );
        request.files.add(multipartFile);
      }
    }

    if (name != null) request.fields['name'] = name;
    if (stock != null) request.fields['stock'] = stock.toString();
    if (jenis != null) request.fields['jenis'] = jenis;
    if (deletedImages != null) {
      request.fields['deletedImagesId'] = deletedImages.join(',');
    }

    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
      'Authorization': 'Bearer $token',
    });

    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 200) {
      return UploadResponse.fromJson(jsonDecode(response.body));
    } else {
      return UploadResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future<UploadResponse> deleteInventory({
    required String token,
    required String idInventory,
  }) async {
    final response = await http.delete(
      Uri.parse('$baseUrl$_inventory/$idInventory'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return UploadResponse.fromJson(jsonDecode(response.body));
    } else {
      return UploadResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future<KandangResponse> getKandang({
    required String token,
    String nama = '',
    page = 1,
    pageSize = 10,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl$_kandang?page=$page&pageSize=$pageSize'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return KandangResponse.fromJson(jsonDecode(response.body));
    } else {
      return KandangResponse.fromJson(jsonDecode(response.body));
    }
  }
}
