import 'package:get/get.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
