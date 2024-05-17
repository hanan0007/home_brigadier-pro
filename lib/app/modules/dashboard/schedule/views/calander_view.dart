// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:home_brigadier_admin_panel/models/expenses_models/expense_response_model.dart';
import 'package:home_brigadier_admin_panel/models/schedule_res_model.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// import 'package:home_brigadier_admin_panel/app/modules/dashboard/expenses/controllers/expenses_controller.dart';

import '../../../../../consts/color_const/app_colors.dart';
import '../../../../../consts/media_query.dart';
// import '../../../../../models/expenses_models/expense_response_model.dart';
import '../../../../../theme/app_text_style.dart';
import '../controllers/schedule_controller.dart';

class Calanderview extends StatefulWidget {
  ScheduleController controller;
  Calanderview({
    super.key,
    required this.controller,
  });

  @override
  State<Calanderview> createState() => _CalanderviewState();
}

class _CalanderviewState extends State<Calanderview> {
  @override
  Widget build(BuildContext context) {
    // ScheduleController ScheduleController = widget.controller;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: mediaQueryHeight(context) * 0.01,
          width: 1000,
        ),
        Row(
          children: [
            const Text(
              "Total Hours : ",
              style: TextStyle(
                  fontSize: AppTextStyle.titleSmallFont,
                  fontWeight: FontWeight.bold),
            ),
            Obx(
              () => Text(
                widget.controller.totalhours.toString(),
                style: const TextStyle(
                    fontSize: AppTextStyle.titleMediumFont,
                    color: AppColor.appPrimary),
              ),
            ),
          ],
        ),

        Row(
          children: [
            const Text(
              "Total Amount :",
              style: TextStyle(
                  fontSize: AppTextStyle.titleSmallFont,
                  fontWeight: FontWeight.bold),
            ),
            Obx(
              () => Text(
                " AED ${widget.controller.totalamout.toString()}",
                style: const TextStyle(
                    fontSize: AppTextStyle.titleMediumFont,
                    color: AppColor.appPrimary),
              ),
            ),
          ],
        ),
        Card(
          color: Colors.white,
          child: Container(
            height: mediaQueryHeight(context) * 0.12,
            width: mediaQueryWidth(context),
            decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // controller.detailpost();
                        print(widget.controller.totalamout.toString());
                        widget.controller.previousDate();
                      },
                      child: Container(
                        height: mediaQueryHeight(context) * 0.05,
                        width: mediaQueryWidth(context) * 0.3,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12))),
                        child: const Center(
                          child: Text(
                            'Previous',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // controller.calenderviewSchedule();
                      },
                      child: Container(
                        height: mediaQueryHeight(context) * 0.05,
                        width: mediaQueryWidth(context) * 0.3,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            top: BorderSide(color: Colors.red, width: 1.0),
                            bottom: BorderSide(color: Colors.red, width: 1.0),
                          ),
                        ),
                        child: const Center(
                            child: Text(
                          "Today",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // controller.detailpost();
                        print(widget.controller.dataList!.length);
                        print(widget.controller.appointments.length);
                        widget.controller.nextDate();
                        // print(model!.message);
                      },
                      child: Container(
                        height: mediaQueryHeight(context) * 0.05,
                        width: mediaQueryWidth(context) * 0.3,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  DateFormat('EEEE, MMMM d, yyyy')
                      .format(widget.controller.selecteddate),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppTextStyle.titleMediumFont),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: mediaQueryHeight(context) * 0.01,
        ),
        Expanded(
          child: FutureBuilder<void>(
            future: widget.controller
                .calenderviewSchedule(), // Call fetchData to get the data
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    CalenderData data = widget.controller.dataList![index];
                    return SizedBox(
                      height: 500,
                      width: 300,
                      child: MyCalendar(
                        controller: widget.controller,
                      ),
                    );
                    // ListTile(
                    //   title: Text(
                    //       data.client!.phoneNumber.toString() ?? ''),
                    //   subtitle: Text(data.startTime ?? ''),
                    //   // You can display other properties of Data model here
                    // );
                  },
                );
              } else {
                // Data is fetched successfully, display it
                return const Text('NO Schedule');
              }
            },
          ),
        ),
        // Expanded(
        //     child: MyCalendar(
        //   controller: controller,
        // ))
      ],
    );
  }
}

class MyCalendar extends StatefulWidget {
  ScheduleController? controller;
  MyCalendar({
    super.key,
    required this.controller,
  });
  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  // Sample event data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCalendar(
            controller: widget.controller!.calendarController,
            view: CalendarView.day,
            dataSource: AppointmentDataSource(widget.controller!.appointments),
            headerHeight: 50,
            viewNavigationMode: ViewNavigationMode.none,
            headerStyle: const CalendarHeaderStyle(
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            timeSlotViewSettings: const TimeSlotViewSettings(
                timeIntervalHeight: 60, startHour: 7, endHour: 23),
            onTap: (CalendarTapDetails details) {
              if (details.targetElement == CalendarElement.appointment) {
                // Show a popup to display appointment details
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AppointmentDetailsPopup(details.appointments!.first);
                  },
                );
              }
            }),
      ),
    );
  }
}

class AppointmentDataSource extends CalendarDataSource {
  AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}

class AppointmentDetailsPopup extends StatelessWidget {
  final Appointment appointment;

  const AppointmentDetailsPopup(this.appointment, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Appointment Details'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Subject: ${appointment.subject}'),
          Text('Start Time: ${appointment.startTime}'),
          Text('End Time: ${appointment.endTime}'),
          // Display more appointment details as needed
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
