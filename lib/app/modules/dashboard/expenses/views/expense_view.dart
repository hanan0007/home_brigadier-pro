// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:marquee/marquee.dart';

import 'package:home_brigadier_admin_panel/app/widgets/c_button.dart';
import 'package:home_brigadier_admin_panel/app/widgets/c_text_feild.dart';
import 'package:home_brigadier_admin_panel/consts/media_query.dart';
import 'package:home_brigadier_admin_panel/main.dart';
import 'package:home_brigadier_admin_panel/models/expenses_models/expense_response_model.dart';
import 'package:home_brigadier_admin_panel/theme/app_text_style.dart';

import '../../../../../consts/color_const/app_colors.dart';
import '../../../../../utils/validation.dart';
import '../controllers/expense_controller.dart';

class ProfileView extends GetView<ExpenseController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProfileController());

    return GetBuilder(
      init: ExpenseController(),
      builder: (_) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: SizedBox(
              width: mediaQueryWidth(context) * 0.94,
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                SizedBox(height: mediaQueryHeight(context) * 0.03),
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
                                  final DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate:
                                        controller.fromDate, // Refer step 1
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2025),
                                  );
                                  if (picked != null &&
                                      picked != controller.selectedDate) {
                                    controller.update_From(picked);
                                  }
                                },
                                focusBorderColor: Colors.transparent,
                                hint:
                                    "${controller.fromDate.day.toString().padLeft(2, '0')}-${controller.fromDate.month.toString().padLeft(2, '0')}-${controller.fromDate.year}",
                                keyboardType: TextInputType.phone,

                                controller: controller.fromdateController,
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
                                  final DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate:
                                        controller.toDate, // Refer step 1
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2025),
                                  );
                                  if (picked != null &&
                                      picked != controller.selectedDate) {
                                    controller.update_toDate(picked);
                                  }
                                },
                                focusBorderColor: Colors.transparent,
                                hint:
                                    "${controller.toDate.day.toString().padLeft(2, '0')}-${controller.toDate.month.toString().padLeft(2, '0')}-${controller.toDate.year}",
                                keyboardType: TextInputType.phone,

                                controller: controller.todateController,
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
                InkWell(
                  onTap: () {
                    print(controller.totalepense);
                  },
                  child: Row(
                    children: [
                      const Text(
                        "Total Expense : ",
                        style: TextStyle(
                            fontSize: AppTextStyle.titleSmallFont,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 150,
                        child: Obx(
                          () => Text(
                            maxLines: 1,
                            controller.totalepense.value.toString(),
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: AppColor.appPrimary,
                              fontSize: AppTextStyle.titleMediumFont,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // CTextField(
                //   contentPadding: 15,
                //   hint: 'Search',
                //   controller: controller.searchController,
                //   borderColor: Colors.transparent,
                //   borderRadius: 12,
                //   filled: true,
                //   fillColor: Colors.grey.withOpacity(0.1),
                //   keyboardType: TextInputType.emailAddress,
                //   textInputAction: TextInputAction.done,
                // ),
                SizedBox(
                  height: mediaQueryHeight(context) * 0.01,
                ),
                Expanded(
                  // color: Colors.amber,
                  // height: 500,
                  // width: mediaQueryWidth(context),
                  child: FutureBuilder<void>(
                    future: controller
                        .getexpenses(), // Call fetchData to get the data
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('No Expense${snapshot.error}'),
                        );
                      } else if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: controller.originaldetail!.length,
                          itemBuilder: (context, index) {
                            Original data = controller.originaldetail![index];
                            return Card(
                                color: Colors.white,
                                borderOnForeground: false,
                                elevation: 8,
                                // shadowColor: Colors.white,
                                child: ExpansionTile(
                                  // backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  title: const Text(
                                    "Paid By",
                                    style: TextStyle(
                                        fontSize: AppTextStyle.titleMediumFont,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    data.paidBy.toString(),
                                  ),
                                  children: [
                                    Column(children: [
                                      const Divider(),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Date',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: AppTextStyle
                                                      .titleSmallFont),
                                            ),
                                            Text(
                                              '${data.date!.substring(8, 10).startsWith('0') ? data.date!.substring(9, 10) : data.date!.substring(8, 10)} ${data.date!.substring(5, 7)} ${data.date!.substring(0, 4)}',
                                              style: const TextStyle(
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            )
                                          ]).marginSymmetric(vertical: 5),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Paid Via',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: AppTextStyle
                                                      .titleSmallFont),
                                            ),
                                            Text(
                                              data.paidVia.toString(),
                                              style: const TextStyle(
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            )
                                          ]).marginSymmetric(vertical: 5),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Remarks',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: AppTextStyle
                                                      .titleSmallFont),
                                            ),
                                            Text(
                                              data.remarks.toString(),
                                              style: const TextStyle(
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            )
                                          ]).marginSymmetric(vertical: 5),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Receipent ID',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: AppTextStyle
                                                      .titleSmallFont),
                                            ),
                                            SizedBox(
                                              width: 100,
                                              height: 30,
                                              child: Marquee(
                                                text: data.reciept!.sId
                                                    .toString(),
                                              ),
                                            )
                                          ]).marginSymmetric(vertical: 5),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Amount AED',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: AppTextStyle
                                                      .titleSmallFont),
                                            ),
                                            Text(
                                              overflow: TextOverflow.fade,
                                              data.amount.toString(),
                                              style: const TextStyle(
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            )
                                          ]).marginSymmetric(vertical: 5),
                                    ]).marginSymmetric(
                                        horizontal:
                                            mediaQueryWidth(context) * 0.1)
                                  ],
                                ));
                          },
                        );
                      } else {
                        return const Center(child: Text('NO Schedule'));
                      }
                    },
                  ),
                ),

                SizedBox(
                  height: mediaQueryHeight(context) * 0.01,
                )
              ]),
            ),
          ),
        );
      },
    );
  }

  void showCustomDialog(
    BuildContext context,
    ExpenseController controller,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          final height = MediaQuery.sizeOf(context).height;
          final width = MediaQuery.sizeOf(context).width;
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              child: Form(
                key: controller.formKey,
                child: Container(
                  decoration: BoxDecoration(
                    color: appColorScheme.onSecondary,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  height: height * 0.8,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Add Expenses",
                                style: TextStyle(
                                    fontSize: AppTextStyle.titleMediumFont,
                                    fontWeight: FontWeight.w900),
                              ),
                              Icon(
                                Icons.cancel,
                                color: appColorScheme.secondary,
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          const Divider(),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          const Text(
                            "Date",
                            style: TextStyle(
                              fontSize: AppTextStyle.titleSmallFont,
                            ),
                          ),
                          Obx(
                            () => CTextField(
                              onTap: () {
                                selectDate(context);
                              },
                              prefexIcon: Icons.calendar_month,
                              hint:
                                  '${controller.selectedDate.value.day.toString().padLeft(2, '0')}-${controller.selectedDate.value.month.toString().padLeft(2, '0')}-${controller.selectedDate.value.year}',
                              controller: controller.dateController,
                              borderColor: Colors.grey,
                              borderRadius: 5,
                              readOnly: true,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            "Expense Type",
                            style: TextStyle(
                              fontSize: AppTextStyle.titleSmallFont,
                            ),
                          ),
                          DropdownExample(
                            controller: controller,
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: AppTextStyle.titleSmallFont,
                            ),
                          ),
                          CTextField(
                              keyboardType: TextInputType.number,
                              hint: 'Enter Amount',
                              controller: controller.amountController,
                              borderColor: Colors.grey,
                              validator: (p0) {
                                return GetValidation.validate(
                                    controller.amountController.text, "Amount");
                              },
                              borderRadius: 5),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            "Paid By",
                            style: TextStyle(
                              fontSize: AppTextStyle.titleSmallFont,
                            ),
                          ),
                          CTextField(
                              hint: 'Enter Paid By',
                              controller: controller.paidbyController,
                              borderColor: Colors.grey,
                              validator: (p0) {
                                return GetValidation.validate(
                                    controller.paidbyController.text,
                                    "Paid by");
                              },
                              borderRadius: 5),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            "Recipent ID",
                            style: TextStyle(
                              fontSize: AppTextStyle.titleSmallFont,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.pickImage();
                            },
                            child: Container(
                                height: height * 0.055,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey)),
                                width: mediaQueryWidth(context),
                                child: Center(
                                    child: Obx(() => Text(
                                        controller.imageName.toString())))),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            "Paid Via",
                            style: TextStyle(
                              fontSize: AppTextStyle.titleSmallFont,
                            ),
                          ),
                          CTextField(
                              hint: 'Enter Paid Via',
                              controller: controller.paidviaController,
                              borderColor: Colors.grey,
                              validator: (p0) {
                                return GetValidation.validate(
                                    controller.paidviaController.text,
                                    "Paid via");
                              },
                              borderRadius: 5),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          CButton(
                            btnwidth: 100,
                            btnheight: 40,
                            text: "Submit",
                            ontab: () {
                              if (controller.formKey.currentState!.validate()) {
                                print('everything is ok');
                                controller.addexpense();
                              }
                              // if (controller.amountController.text.isEmpty &&
                              //     controller.paidbyController.text.isEmpty &&
                              //     controller.paidviaController.text.isEmpty &&
                              //     controller.remarksController.text.isEmpty &&
                              //     controller.type.value ==
                              //         'Select Expense Type') {
                              //   print('errrrrrrrrrrrrrrrror');
                              // } else {
                              //   controller.addexpense();
                              // }
                              // controller.addexpense();
                            },
                          ),
                          SizedBox(
                            height: height * 0.02,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        });
  }

  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: controller.selectedDate.value, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != controller.selectedDate) {
      controller.updateDate(picked);
    }
  }
}

class DropdownExample extends StatefulWidget {
  final ExpenseController? controller;

  DropdownExample({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedValue = 'Select Expense Type';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      validator: (value) {
        if (value == null || value == 'Select Expense Type') {
          return 'Please select an expense type';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        fillColor: Colors.white, // Set background color to white
      ),
      style: const TextStyle(
        fontSize: 16, // Use your desired font size
      ),
      dropdownColor: Colors.white, // Set dropdown menu color to white
      value: selectedValue,
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
          if (widget.controller != null) {
            widget.controller!.type.value = newValue;
          }
        });
      },
      items: <String>[
        'Select Expense Type',
        'FUEL',
        'SALARY',
        'INTERNET',
        'VEHICLE_MAINTENANCE',
        'OTHER'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}
