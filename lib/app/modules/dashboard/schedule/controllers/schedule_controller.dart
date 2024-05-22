// import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:home_brigadier_admin_panel/app/services/apis/api_helper.dart';
import 'package:home_brigadier_admin_panel/models/listview_schedule_models/listview_res_model.dart';
// import 'package:home_brigadier_admin_panel/models/listview_schedule_models/listview_req_model.dart';
// import 'package:home_brigadier_admin_panel/models/listview_schedule_models/listview_res_model.dart';
import 'package:home_brigadier_admin_panel/models/schedule_req_model.dart';
import 'package:home_brigadier_admin_panel/models/schedule_res_model.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// import '../../../../../models/expenses_models/expenses_req_model.dart';

class ScheduleController extends GetxController {
  //TODO: Implement ScheduleController

  ApiHelper apiHelper = ApiHelper();
  CalendarController calendarController = CalendarController();
  TextEditingController fromdateController = TextEditingController();
  TextEditingController todateController = TextEditingController();
  DateTime selecteddate = DateTime.now();
  RxString view = "C".obs;
  var phoneFocus = false.obs;
  void onRateFocus(value) {
    phoneFocus.value = value;
  }

  update_screen_view(String cview) {
    view.value = cview;
    update();
  }

  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  update_From(DateTime date) {
    fromDate = date;

    update();
    // listviewschedule();
  }

  update_toDate(DateTime date) {
    toDate = date;
    update();
    // listviewschedule();
  }

  nextDate() {
    selecteddate = selecteddate.add(const Duration(days: 1));

    calendarController.displayDate = selecteddate;
    update();
    calenderviewSchedule();
  }

  previousDate() {
    selecteddate = selecteddate.subtract(const Duration(days: 1));
    calendarController.displayDate = selecteddate;
    update();
    calenderviewSchedule();
  }

  // List<ListviewAssignee>? listviewassigne;
  // List<Original>? listviewdetail;
  // listviewschedule() async {
  //   print('function started lsitview');
  //   ListViewRequesteModel model = ListViewRequesteModel(
  //       columns: [],
  //       draw: 1,
  //       length: 40,
  //       order: [],
  //       start: 0,
  //       search: null,
  //       startDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(
  //           DateTime(fromDate.year, fromDate.month, fromDate.day, 0, 0, 0)),
  //       endDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(
  //           DateTime(toDate.year, toDate.month, toDate.day, 23, 59, 59)));
  //   try {
  //     var response = await apiHelper.post(
  //         endpoint: '/getClientsBookings', data: model.toJson());

  //     if (response.statusCode == 200) {
  //       print('response${response.data}');
  //       final result = ListViewResponseModel.fromJson(response.data);

  //       if (result.data!.original!.isNotEmpty) {
  //         listviewdetail = result.data!.original;
  //         // totalexpense = result.data!.total;
  //         // originaldetail = result.data!.original;
  //         // totalepense.value = result.data!.total!.first.totalExpenses!.toInt();
  //       } else {
  //         // totalepense.value = 0;
  //         // totalexpense!.clear();
  //         // originaldetail!.clear();
  //       }
  //       return result;
  //     }
  //   } on DioException catch (e) {
  //     if (e.type == DioExceptionType.badResponse) {
  //       // Alert.appToast("Incorect pasword or email", isError: true);
  //       print(e.toString());
  //     } else {
  //       print(e.message);
  //     }
  //   }
  // }
  // add schedule

  // ====== Claender Schedule ====
  List<CalenderData>? dataList;
  List<CalenderClient>? clientlist;
  RxDouble totalamout = 0.0.obs;
  RxDouble totalhours = 0.0.obs;
  RxDouble totalamountdue = 0.0.obs;
  List<Appointment> appointments = [];
  calenderviewSchedule() async {
    ScheduleModel model = ScheduleModel(
        startDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(DateTime(
            selecteddate.year, selecteddate.month, selecteddate.day, 0, 0, 0)),
        endDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(DateTime(
            selecteddate.year,
            selecteddate.month,
            selecteddate.day,
            23,
            59,
            59)));
    try {
      var response =
          await apiHelper.post(endpoint: '/allBookings', data: model.toJson());

      if (response.statusCode == 200) {
        final result = ResponseModel.fromJson(response.data);
        print(result.data);
        if (result.data != null) {
          dataList = result.data;
          totalamout.value = result.total!.todayBookingAmount!.toDouble();
          totalhours.value = result.total!.todayBookingHours!.toDouble();

          appointments = dataList!
              .map((booking) => Appointment(
                    startTime:
                        DateTime.parse(booking.startTime!.substring(0, 19)),
                    endTime: DateTime.parse(booking.endTime!.substring(0, 19)),
                    subject:
                        "${booking.assignee!.name.toString()} ", // You can set subject based on your requirements
                    color: Colors.blue, // Set color as needed
                  ))
              .toList();
        } else {
          totalamout.value = 0.0;
          totalhours.value = 0.0;
        }

        return result;
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        // Alert.appToast("Incorect pasword or email", isError: true);
        print(e.toString());
      } else {
        print(e.message);
      }
    }
  }

  // ==== listview Schedule ===
  List<Client>? listviewclients;
  List<CalenderData>? listdataList;
  listviewSchedule() async {
    ScheduleModel model = ScheduleModel(
        startDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(
            DateTime(fromDate.year, fromDate.month, fromDate.day, 0, 0, 0)),
        endDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(
            DateTime(toDate.year, toDate.month, toDate.day, 23, 59, 00)));
    try {
      var response =
          await apiHelper.post(endpoint: '/allBookings', data: model.toJson());

      if (response.statusCode == 200) {
        final result = ResponseModel.fromJson(response.data);
        print(result.data!.length);
        if (result.data != null) {
          listdataList = result.data;
          totalamout.value = result.total!.todayBookingAmount!.toDouble();
          totalhours.value = result.total!.todayBookingHours!.toDouble();
        } else {
          totalamout.value = 0.0;
          totalhours.value = 0.0;
        }

        return result;
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        // Alert.appToast("Incorect pasword or email", isError: true);
        print(e.toString());
      } else {
        print(e.message);
      }
    }
  }

  final count = 0.obs;

  void increment() => count.value++;
}
