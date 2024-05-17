import 'package:get/get.dart';

import '../modules/dashboard/Home/views/Home_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/schedule/bindings/schedule_binding.dart';
import '../modules/dashboard/schedule/views/schedule_view.dart';
import '../modules/dashboard/home/bindings/home_binding.dart';
import '../modules/dashboard/expenses/bindings/expense_binding.dart';
import '../modules/dashboard/expenses/views/expense_view.dart';

import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/forget_password/bindings/forget_password_binding.dart';
import '../modules/forget_password/views/forget_password_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
      children: [
        GetPage(
          name: _Paths.SCHEDULE,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: _Paths.EXPENSES,
          page: () => const ScheduleView(),
          binding: ScheduleBinding(),
        ),
        GetPage(
          name: _Paths.PROFILE,
          page: () => const ProfileView(),
          binding: ExpenseBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
  ];
}
