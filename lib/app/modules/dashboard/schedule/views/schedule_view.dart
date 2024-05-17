// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:home_brigadier_admin_panel/app/modules/dashboard/schedule/views/calander_view.dart';
import 'package:home_brigadier_admin_panel/models/schedule_res_model.dart';

import 'package:home_brigadier_admin_panel/consts/media_query.dart';
// import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../../consts/color_const/app_colors.dart';
import '../../../../../theme/app_text_style.dart';
import '../../../../widgets/c_text_feild.dart';
import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  const ScheduleView({super.key});
  @override
  Widget build(BuildContext context) {
    // List<Data>? dataList;
    return GetBuilder(
      init: ScheduleController(),
      builder: (_) {
        return Scaffold(
            body: Center(
          child: SizedBox(
            height: mediaQueryHeight(context),
            // color: Colors.red,
            width: mediaQueryWidth(context) * 0.95,
            child: Center(
                child: controller.view == 'C'
                    ? Calanderview(controller: controller)
                    : Column(
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
                                  controller.totalhours.toString(),
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
                                  " AED ${controller.totalamout.toString()}",
                                  style: const TextStyle(
                                      fontSize: AppTextStyle.titleMediumFont,
                                      color: AppColor.appPrimary),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Total Due Amount :",
                                style: TextStyle(
                                    fontSize: AppTextStyle.titleSmallFont,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " AED 6778",
                                style: TextStyle(
                                    fontSize: AppTextStyle.titleMediumFont,
                                    color: AppColor.appPrimary),
                              )
                            ],
                          ),
                          Focus(
                            onFocusChange: (value) {
                              controller.onRateFocus(value);
                            },
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    border: Border.all(
                                      color: controller.phoneFocus.value
                                          ? AppColor.appSecondary
                                          : Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(12),
                                            topLeft: Radius.circular(12),
                                          ),
                                        ),
                                        height: double.maxFinite,
                                        width: 60,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "From",
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ),
                                      Expanded(
                                        child: CTextField(
                                          maxlength: 9,

                                          readOnly: true,
                                          onTap: () async {
                                            final DateTime? picked =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: controller
                                                  .fromDate, // Refer step 1
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2025),
                                            );
                                            if (picked != null) {
                                              controller.update_From(picked);
                                            }
                                          },
                                          focusBorderColor: Colors.transparent,
                                          hint:
                                              "${controller.fromDate.day.toString().padLeft(2, '0')}-${controller.fromDate.month.toString().padLeft(2, '0')}-${controller.fromDate.year}",
                                          keyboardType: TextInputType.phone,

                                          controller:
                                              controller.fromdateController,
                                          // controller:
                                          //     controller.phoneController,
                                          borderColor: Colors.transparent,
                                          counterText: '',
                                          contentPadding: 5,
                                          borderRadius: 12,
                                          suffix: const Icon(
                                            Icons.calendar_month,
                                            size: 25,
                                          ),
                                          onChanged: (p0) {
                                            //  if(controller.phoneController.text.length==9){
                                            //    FocusScope.of(context).unfocus();
                                            //  }
                                          },
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: mediaQueryHeight(context) * 0.01,
                          ),
                          Focus(
                            onFocusChange: (value) {
                              controller.onRateFocus(value);
                            },
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    border: Border.all(
                                      color: controller.phoneFocus.value
                                          ? AppColor.appSecondary
                                          : Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(12),
                                            topLeft: Radius.circular(12),
                                          ),
                                        ),
                                        height: double.maxFinite,
                                        width: 60,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "To",
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ),
                                      Expanded(
                                        child: CTextField(
                                          maxlength: 9,
                                          readOnly: true,
                                          onTap: () async {
                                            final DateTime? picked =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: controller
                                                  .toDate, // Refer step 1
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2025),
                                            );
                                            if (picked != null) {
                                              controller.update_toDate(picked);
                                            }
                                          },
                                          focusBorderColor: Colors.transparent,
                                          hint:
                                              "${controller.toDate.day.toString().padLeft(2, '0')}-${controller.toDate.month.toString().padLeft(2, '0')}-${controller.toDate.year}",
                                          keyboardType: TextInputType.phone,

                                          controller:
                                              controller.todateController,
                                          // controller:
                                          //     controller.phoneController,
                                          borderColor: Colors.transparent,
                                          counterText: '',
                                          contentPadding: 5,
                                          borderRadius: 12,
                                          suffix: const Icon(
                                            Icons.calendar_month,
                                            size: 25,
                                          ),
                                          onChanged: (p0) {
                                            //  if(controller.phoneController.text.length==9){
                                            //    FocusScope.of(context).unfocus();
                                            //  }
                                          },
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: mediaQueryHeight(context) * 0.01,
                          ),
                          Expanded(
                            // color: Colors.amber,
                            // height: 500,
                            // width: mediaQueryWidth(context),
                            child: FutureBuilder(
                              future: controller
                                  .listviewSchedule(), // Call fetchData to get the data
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else if (snapshot.hasError) {
                                  return Center(
                                    child: Text("error$snapshot"),
                                  );
                                } else if (snapshot.hasData) {
                                  return ListView.builder(
                                    itemCount: controller.listdataList!.length,
                                    itemBuilder: (context, index) {
                                      CalenderData data =
                                          controller.listdataList![index];
                                      int displayIndex = index + 1;
                                      return Card(
                                          color: Colors.white,
                                          borderOnForeground: false,
                                          elevation: 8,
                                          // shadowColor: Colors.white,
                                          child: ExpansionTile(
                                            // backgroundColor: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            title: const Text(
                                              "CLient",
                                              style: TextStyle(
                                                  fontSize: AppTextStyle
                                                      .titleMediumFont,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              data.client!.name.toString(),
                                            ),
                                            children: [
                                              Column(children: [
                                                const Divider(),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'ID',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        displayIndex.toString(),
                                                        style: const TextStyle(
                                                            // fontWeight: FontWeight.bold,
                                                            fontSize: 15),
                                                      )
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Hours',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        data.hours.toString(),
                                                        style: const TextStyle(
                                                            // fontWeight: FontWeight.bold,
                                                            fontSize: 15),
                                                      )
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Total Amount',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        data.totalAmount
                                                            .toString(),
                                                        style: const TextStyle(
                                                            // fontWeight: FontWeight.bold,
                                                            fontSize: 15),
                                                      )
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Start Time',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        '${(int.parse(data.startTime!.substring(11, 13)) % 12).toString().padLeft(2, '0')}:${data.startTime!.substring(14, 16)} ${(int.parse(data.startTime!.substring(11, 13)) < 12) ? 'am' : 'pm'}',
                                                      ),
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'End Time',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        overflow:
                                                            TextOverflow.fade,
                                                        '${(int.parse(data.endTime!.substring(11, 13)) % 12).toString().padLeft(2, '0')}:${data.endTime!.substring(14, 16)} ${(int.parse(data.endTime!.substring(11, 13)) < 12) ? 'am' : 'pm'}',
                                                      )
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Assigne',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        data.assignee!.name
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.blue),
                                                      ),
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Material',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        data.material
                                                                    .toString() ==
                                                                'false'
                                                            ? 'No'
                                                            : 'Yes',
                                                      ),
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Payment status',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        data.paymentStatus!
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.blue),
                                                      ),
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Booking status',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        data.flag.toString(),
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.blue),
                                                      ),
                                                    ]).marginSymmetric(
                                                    vertical: 5),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Description',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: AppTextStyle
                                                                .titleSmallFont),
                                                      ),
                                                      Text(
                                                        data.description
                                                            .toString(),
                                                      ),
                                                    ]).marginSymmetric(
                                                    vertical: 5)
                                              ]).marginSymmetric(
                                                  horizontal:
                                                      mediaQueryWidth(context) *
                                                          0.1)
                                            ],
                                          ));
                                    },
                                  );
                                } else {
                                  return const Center(
                                      child: Text('NO Schedule'));
                                }
                              },
                            ),
                          ),
                        ],
                      )),
          ),
        ));
      },
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
