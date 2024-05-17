import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_brigadier_admin_panel/app/routes/app_pages.dart';
import 'package:home_brigadier_admin_panel/app/services/apis/api_endpoints.dart';
import 'package:home_brigadier_admin_panel/app/services/apis/api_helper.dart';
import 'package:home_brigadier_admin_panel/models/login_req_model.dart';
import 'package:home_brigadier_admin_panel/models/login_res_model.dart';
import 'package:home_brigadier_admin_panel/utils/shared_preference.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find<LoginController>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late ApiHelper apiHelper;

  RxBool obx = true.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    apiHelper = ApiHelper();
    super.onInit();
  }

  login() async {
    var data = LoginRequestModel(
      email: emailController.text,
      password: passwordController.text,
    );
    isLoading.value = true;

    update();
    print(isLoading.value);

    try {
      var response = await apiHelper.post(endpoint: LOGIN, data: data.toJson());
      print("${response.statusCode}jjjjjjjjjjjjjjjjjj");
      if (response.statusCode == 200) {
        isLoading = false.obs;
        update();
        final result = LoginResponseModel.fromJson(response.data);
        SharedPreference.storeUserInfo(result);
        Get.toNamed(Routes.DASHBOARD);
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        // Alert.appToast("Incorect pasword or email", isError: true);
        print(e.toString());
        isLoading.value = false;
        update();
      } else {
        print(e.message);
        isLoading.value = false;
        update();
      }
    }
  }

  onObx() {
    obx.value = !obx.value;
  }
}
