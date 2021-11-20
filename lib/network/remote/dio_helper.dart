import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'http://heed.linekw.net/api/',
      // receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    @required String url,
    Map<String, dynamic> query,
    String lang = 'en',
    String token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Authorization': token ?? '',
      'Content-Type': 'application/json',
      'FirebaseToken': '',
      'Platform': 'android',
      "FirebaseToken": "FirebaseToken",
      "Authorization":
          "\$2y\$10\$0HkTz09Oaj1Cyoy0F15vfeiPAf6LUhhOHpGEFBA0PEZBsGDj1WBVy"
    };

    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    @required String url,
    Map<String, dynamic> query,
    data,
    String lang = 'en',
    String token,
  }) async {
    dio.options.headers = {
      'Lang': lang,
      'Authorization': token ?? '',
      'Content-Type': 'application/json',
      'FirebaseToken': '',
      'Platform': 'android'
    };

    return dio.post(
      url,
      // queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    @required String url,
    Map<String, dynamic> query,
    @required Map<String, dynamic> data,
    String lang = 'en',
    String token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Authorization': token ?? '',
      'Content-Type': 'application/json',
    };

    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
