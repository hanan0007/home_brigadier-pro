import 'package:dio/dio.dart';
import 'package:home_brigadier_admin_panel/utils/alerts.dart';

void handleException(DioException error) {
  switch (error.type) {
    case DioExceptionType.badResponse:
      Alert.appToast('Incorrect email or password', isError: true);
      break;
    case DioExceptionType.connectionError:
      Alert.appToast("No internet Connection", isError: true);
      break;

    case DioExceptionType.sendTimeout:
      // Handle send timeout
      Alert.appToast("Request Timeout", isError: true);
      break;

    case DioExceptionType.receiveTimeout:
      // Handle receive timeout
      Alert.appToast("Request Timeout", isError: true);
      break;

    case DioExceptionType.cancel:
      // Handle request cancellation
      Alert.appToast("Request Cancelled", isError: true);
      break;

    default:
      // Handle any other types of errors
      Alert.appToast("Something wents wrong", isError: true);
  }
}
