import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/schedule/controllers/schedule_controller.dart';
// import 'package:home_brigadier_admin_panel/app/modules/dashboard/expenses/controllers/expenses_controller.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/schedule/views/schedule_view.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/expenses/controllers/expense_controller.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/expenses/views/expense_view.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/Home_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    ProfileView profileview = const ProfileView();
    final profielController = Get.put(ExpenseController());
    // ignore: non_constant_identifier_names
    final expcontroller = Get.put(ScheduleController());

    return PopScope(
      onPopInvoked: (didPop) {
        exit(0);
      },
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Obx(
              () => controller.currentIndex.value == 0
                  ? scheduleAppBar()
                  : controller.currentIndex.value == 1
                      ? expenseAppBar(expcontroller)
                      : profileAppBar(profileview, context, profielController),
            )),
        body: PageView(
          onPageChanged: (value) => controller.onPageChange(value),
          controller: controller.pageController,
          physics: const ClampingScrollPhysics(),
          children: const <Widget>[HomeView(), ScheduleView(), ProfileView()],
        ),
        bottomNavigationBar: Obx(
          () => bottomNavigationBar(controller, theme),
        ),
      ),
    );
  }
}

BottomNavigationBar bottomNavigationBar(
    DashboardController controller, ThemeData theme) {
  return BottomNavigationBar(
      currentIndex: controller.currentIndex.value,
      onTap: (value) => controller.onTap(value),
      items: [
        const BottomNavigationBarItem(
            tooltip: "Home Brigadier",
            label: "DashBoard",
            icon: Icon(Icons.dashboard),
            activeIcon: Icon(Icons.dashboard)),
        const BottomNavigationBarItem(
            tooltip: "Home Brigadier",
            label: "Schedule",
            icon: Icon(Icons.backpack_outlined),
            activeIcon: Icon(Icons.backpack_rounded)),
        BottomNavigationBarItem(
          tooltip: "Expenses",
          label: "Expenses",
          icon: SvgPicture.asset(
            "assets/icons/ic_dollar.svg",
            color: theme.bottomNavigationBarTheme.unselectedItemColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/ic_dollar.svg",
            color: theme.bottomNavigationBarTheme.selectedItemColor,
          ),
        ),
      ]);
}

AppBar scheduleAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text("Home Brigadier"),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Badge(child: Icon(CupertinoIcons.bell))),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.person)),
          ],
        ),
      ),
    ],
    // bottom: PreferredSize(
    //     preferredSize: const Size.fromHeight(kTextTabBarHeight),
    //     child: appBarBottom()),
  );
}

AppBar expenseAppBar(ScheduleController controller) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text("Schedule"),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Row(
          children: [
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert_sharp),
              tooltip: "view mode",
              offset: const Offset(double.maxFinite, kToolbarHeight),
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'L',
                    child: Text('List View'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'C',
                    child: Text('Calender  View'),
                  ),
                ];
              },
              onSelected: (String value) {
                controller.update_screen_view(value);
              },
            ),
          ],
        ),
      ),
    ],
    // bottom: PreferredSize(
    //     preferredSize: const Size.fromHeight(kTextTabBarHeight),
    //     child: appBarBottom()),
  );
}

AppBar profileAppBar(
    ProfileView view, BuildContext context, ExpenseController controller) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text("Add Expense"),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                view.showCustomDialog(context, controller);
              },
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget appBarBottom() {
  return Row(children: [
    PopupMenuButton<String>(
      icon: const Icon(Icons.menu_open),
      tooltip: "view mode",
      offset: const Offset(0, 50), // Adjust vertical position if needed
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
    ),
  ]);
}
