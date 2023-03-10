import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';


class Diohelper {

    static Dio dio = Dio();

  static init() {
    dio = Dio(
        BaseOptions(
            baseUrl: 'https://api.themoviedb.org/',
            receiveDataWhenStatusError: true
        )

    );
  }
 static Future<Response> getdata({required String url ,required Map<String ,dynamic>query})async{

    return await dio.get(url,queryParameters: query);

 }

}