import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  more_menu() {
    PopupMenuButton<String>(
      icon: const Icon(Icons.menu_open),
      tooltip: "view mode",
      offset: const Offset(double.maxFinite, kToolbarHeight),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'List View',
            child: Text('List View'),
          ),
          const PopupMenuItem<String>(
            value: 'Calender  View',
            child: Text('Calender  View'),
          ),
        ];
      },
      onSelected: (String value) {},
    );
  }

  final count = 0.obs;



  void increment() => count.value++;
}
