import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class ApiRepository {
  static final Dio _dio = Dio();

  static Future<Response> getApi(String url, {bool needToken = false}) async {
    final box = GetStorage();
    if (needToken) {
      final token = box.read('token');
      _dio.options.headers['Authorization'] = 'Bearer ';
    }
    return _dio.get(url);
  }

  static Future<Response> postBody(String url, dynamic data, {bool needToken = false}) async {
    final box = GetStorage();
    if (needToken) {
      final token = box.read('token');
      _dio.options.headers['Authorization'] = 'Bearer ';
    }
    return _dio.post(url, data: data);
  }

  static Future<Response> postFormData(String url, FormData data, {bool needToken = false}) async {
    final box = GetStorage();
    if (needToken) {
      final token = box.read('token');
      _dio.options.headers['Authorization'] = 'Bearer ';
    }
    return _dio.post(url, data: data);
  }
}
