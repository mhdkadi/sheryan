import 'dart:developer';

import 'package:dio/dio.dart';

class UserRepository {
  final Dio dio;

  UserRepository({required this.dio});

  ///TODO change the return type to User
  Future<void> login({
    required String username,
    required String password,
  }) async {
    try {
      final Response response = await dio.post(
        "/users/login",
        data: {
          "username": username,
          "password": password,
        },
      );
      log(response.data.toString());

      ///TODO return the user
    } on DioError catch (e) {
      log(e.message.toString());
      log((e.response?.statusMessage).toString());

      ///TODO handle the Exception
    }
  }

  Future<void> register({
    required String username,
    required String password,
    required String address,
    required String phoneNumber,
  }) async {
    try {
      final Response response = await dio.post("/users/register", data: {
        "username": username,
        "password": password,
        "address": address,
        "phone": phoneNumber,
      });
      log(response.data.toString());
    } on DioError catch (e) {
      log(e.message.toString());
      log((e.response?.statusMessage).toString());
    }
  }
}
