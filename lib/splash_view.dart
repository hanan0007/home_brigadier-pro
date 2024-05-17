import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_brigadier_admin_panel/app/routes/app_pages.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.offAndToNamed(Routes.LOGIN);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
