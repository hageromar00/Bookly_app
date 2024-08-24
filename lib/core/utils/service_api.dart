import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final dio = Dio();
  Future<Map<String, dynamic>> getService({required String endPoint}) async{
   Response response =await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
