import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String _baseUrl = "https://www.googleapis.com/books/";
  ApiService(this.dio);
  get({required String Endpoint}) async {
    var response = await dio.get("$_baseUrl$Endpoint");
    return response.data;
  }
}
