import 'dart:ffi';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:home_brigadier_admin_panel/models/expenses_models/add_expense_model.dart';
import 'package:home_brigadier_admin_panel/models/expenses_models/expense_response_model.dart';
import 'package:home_brigadier_admin_panel/models/expenses_models/expenses_req_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;

import '../../../../services/apis/api_helper.dart';

class ExpenseController extends GetxController {
  //TODO: Implement ExpenseController
  TextEditingController dateController = TextEditingController();
  TextEditingController paidbyController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController paidviaController = TextEditingController();
  TextEditingController fromdateController = TextEditingController();
  TextEditingController todateController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  ApiHelper apiHelper = ApiHelper();
  final count = 0.obs;
  var selectedDate = DateTime.now().obs;
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  RxString type = 'Select Expense Type'.obs;
  final formKey = GlobalKey<FormState>();
  update_From(DateTime date) {
    fromDate = date;
    update();
  }

  update_toDate(DateTime date) {
    toDate = date;
    update();
  }

  updateDate(DateTime date) {
    selectedDate.value = date;
    update();
  }

  var phoneFocus = false.obs;
  void onRateFocus(value) {
    phoneFocus.value = value;
  }

  File? image;
  RxString imageName = 'Select Recipent ID'.obs;
  final ImagePicker picker = ImagePicker();
  Future<void> pickImage() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      imageName.value = path.basename(pickedFile.path);
      update(); // Extract file name
    }
  }

  RxString totalepense = '0'.obs;
  List<Total>? totalexpense;
  List<Original>? originaldetail;
  getexpenses() async {
    print("function start");
    ExpensesRequestModel model = ExpensesRequestModel(
        columns: [],
        draw: 1,
        length: 40,
        order: [],
        start: 0,
        search: null,
        startDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'+0400'").format(
            DateTime(fromDate.year, fromDate.month, fromDate.day, 0, 0, 0)),
        endDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'+0400'").format(
            DateTime(toDate.year, toDate.month, toDate.day, 23, 59, 59)));
    print(model.startDate);
    print(model.endDate);
    try {
      var response =
          await apiHelper.post(endpoint: '/getExpenses', data: model.toJson());

      if (response.statusCode == 200) {
        print('response${response.data}');
        final result = ExpensesResponseModel.fromJson(response.data);

        if (result.data!.original!.isNotEmpty) {
          totalexpense = result.data!.total;
          originaldetail = result.data!.original;
          totalepense.value =
              result.data!.total!.first.totalExpenses!.toString();
        } else {
          totalepense = "0".obs;
          totalexpense!.clear();
          originaldetail!.clear();
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

  addexpense() async {
    AddExpenseModel model = AddExpenseModel(
        amount: int.parse(amountController.text),
        date: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(DateTime(
            selectedDate.value.year,
            selectedDate.value.month,
            selectedDate.value.day,
            0,
            0,
            0)),
        paidBy: paidbyController.text,
        paidVia: paidviaController.text,
        receiptId: "",
        remarks: remarksController.text,
        type: type.value);

    print(
        "Model${model.amount},${model.date},${model.paidBy},${model.paidVia},${model.receiptId},${model.remarks}${model.type}");
    try {
      var response =
          await apiHelper.post(endpoint: 'addExpense/', data: model.toJson());

      if (response.statusCode == 200) {
        print(response.data);
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

  void increment() => count.value++;
}
