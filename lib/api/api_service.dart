import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flowerapp/constants/urls.dart';
import 'package:flowerapp/models/login_model.dart';
import 'package:flowerapp/models/user_model.dart';

class ApiService {
  Future<UserModel> login(LoginRequestModel requestModel) async {
    String? email = requestModel.email;
    String? password = requestModel.password;
    String url = '$baseUrl/v1/client/login';

    Map data = {"email": email, "password": password};

    var body = json.encode(data);

    final response = await http.post(Uri.parse(url), body: body, headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Access-Control-Allow-Headers": "*",
      'authorization': basicAuth
    });
    var test = jsonDecode(response.body);

    if (response.statusCode == 200 || response.statusCode == 400) {
      debugPrint(test["message"]);

      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed with code: ${response.statusCode}");
    }
  }

  Future<dynamic> register(UserModel userModel) async {
    String? email = userModel.email;
    String? password = userModel.password;
    String? nationality = userModel.nationality;
    String? id = userModel.natId;
    String url = '$baseUrl/v1/client/create';
    // userModel.toJson();

    Map data = {
      "ID'": id,
      "natId": nationality,
      "email": email,
      "password": password
    };

    var body = json.encode(data);

    final response = await http.post(Uri.parse(url),
        // body: requestModel.toJson(),
        body: body,
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Access-Control-Allow-Headers": "*",
          'authorization': basicAuth
        });

    if (response.statusCode == 200 || response.statusCode == 400) {
      debugPrint(response.body);
      return response.statusCode;
    } else {
      throw Exception("Failed with code: ${response.statusCode}");
    }
  }
}
