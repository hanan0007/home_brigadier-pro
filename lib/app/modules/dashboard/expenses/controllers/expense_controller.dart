import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  DateTime selectedDate = DateTime.now();
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  update_From(DateTime date) {
    fromDate = date;

    update();
  }

  update_toDate(DateTime date) {
    toDate = date;
    update();
  }

  updateDate(DateTime date) {
    selectedDate = date;
    update();
  }

  var phoneFocus = false.obs;
  void onRateFocus(value) {
    phoneFocus.value = value;
  }

  File? image;
  String imageName = 'Select Recipent ID';
  final ImagePicker picker = ImagePicker();
  Future<void> pickImage() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      imageName = path.basename(pickedFile.path);
      update(); // Extract file name
    }
  }

  RxInt totalepense = 0.obs;
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
        startDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(
            DateTime(fromDate.year, fromDate.month, fromDate.day, 0, 0, 0)),
        endDate: DateFormat("yyyy-MM-dd'T'HH:mm:ss'-0700'").format(
            DateTime(toDate.year, toDate.month, toDate.day, 23, 59, 59)));
    try {
      var response =
          await apiHelper.post(endpoint: '/getExpenses', data: model.toJson());

      if (response.statusCode == 200) {
        print('response${response.data}');
        final result = ExpensesResponseModel.fromJson(response.data);

        if (result.data!.original!.isNotEmpty) {
          totalexpense = result.data!.total;
          originaldetail = result.data!.original;
          totalepense.value = result.data!.total!.first.totalExpenses!.toInt();
        } else {
          totalepense.value = 0;
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




  void increment() => count.value++;
}
