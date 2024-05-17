import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final PageController pageController = PageController();
  RxInt currentIndex = 0.obs;



  onPageChange(int value) {
    currentIndex.value = value;
  }

  onTap(int value) {
    pageController.jumpToPage(value);
  }

}
