import 'package:dio/dio.dart';
import 'package:home_brigadier_admin_panel/app/services/apis/error_handler.dart';

import '../../../consts/static_data.dart';
import '../../../utils/alerts.dart';
import 'api_endpoints.dart';

class ApiHelper {
  final Dio _dio;
  final CancelToken _cancelToken = CancelToken();

  ApiHelper() : _dio = Dio() {
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.headers['Authorization'] = 'Bearer ${StaticData.accessToken}';
  }

  Future<Response> get(String endpoint, {bool includeToken = false}) async {
    try {
      _setHeaders(includeToken);
      final response =
          await _dio.get("$BASEURL$endpoint", cancelToken: _cancelToken);

      return response;
    } on DioException catch (error) {
      handleException(error);
      rethrow;
    }
  }

  Future<Response> post(
      {required String endpoint, required dynamic data}) async {
    try {
      final response = await _dio
          .post('$BASEURL$endpoint',
              data: data,
              options: Options(
                headers: {'Authorization': 'Bearer ${StaticData.accessToken}'},
              ),
              cancelToken: _cancelToken)
          .timeout(const Duration(seconds: 10),
              onTimeout: () => _requestTimeout());
      return response;
    } on DioException catch (error) {
      handleException(error);
      rethrow;
    }
  }

  void _setHeaders(bool includeToken) {
    if (includeToken) {
      _dio.options.headers['Authorization'] =
          'Bearer ${StaticData.accessToken}';
    } else {
      _dio.options.headers.remove('Authorization');
    }
  }

  _requestTimeout() {
    Alert.appToast("Request timed out");
    Alert.appToast("Unstable internet connection");
    _cancelToken.cancel("Request timed out");
  }
}
