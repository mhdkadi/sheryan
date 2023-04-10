import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sheryan/app/core/models/user_model.dart';

class UserRepository {
  final Dio dio;

  UserRepository({required this.dio});

  Future<User> login({
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
      User user = User.fromMap(response.data);
      return user;
    } on DioError catch (e) {
      if (e.runtimeType == DioError) {
        if (e.response?.statusCode == 404) {
          throw "المستخدم غير  موجود";
        } else {
          throw "حدث خطأ ما";
        }
      } else if (e.runtimeType == SocketException) {
        throw "لا يوجد إنترنت";
      } else if (e.runtimeType == FormatException) {
        throw "خطأ في المعلومات ";
      } else {
        throw "حدث خطأ ما";
      }
    }
  }
/////////////////////////////////////////////////////////

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
