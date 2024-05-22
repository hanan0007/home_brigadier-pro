class ResponseModel {
  String? status;
  String? message;
  List<CalenderData>? data;
  Total? total;

  ResponseModel({this.status, this.message, this.data, this.total});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <CalenderData>[];
      json['data'].forEach((v) {
        data!.add(CalenderData.fromJson(v));
      });
    }
    total = json['total'] != null ? Total.fromJson(json['total']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (total != null) {
      data['total'] = total!.toJson();
    }
    return data;
  }
}

class CalenderData {
  String? bookingName;
  CalenderClient? client;
  Assignee? assignee;
  num? hours;
  String? startTime;
  String? endTime;
  num? ratePerHour;
  bool? material;
  String? description;
  String? flag;
  String? paymentStatus;
  num? totalAmount;
  String? id;

  CalenderData(
      {this.bookingName,
      this.client,
      this.assignee,
      this.hours,
      this.startTime,
      this.endTime,
      this.ratePerHour,
      this.material,
      this.description,
      this.flag,
      this.paymentStatus,
      this.totalAmount,
      this.id});

  CalenderData.fromJson(Map<String, dynamic> json) {
    bookingName = json['bookingName'];
    client =
        json['client'] != null ? CalenderClient.fromJson(json['client']) : null;
    assignee =
        json['assignee'] != null ? Assignee.fromJson(json['assignee']) : null;
    hours = json['hours'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    ratePerHour = json['ratePerHour'];
    material = json['material'];
    description = json['description'];
    flag = json['flag'];
    paymentStatus = json['paymentStatus'];
    totalAmount = json['totalAmount'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookingName'] = bookingName;
    if (client != null) {
      data['client'] = client!.toJson();
    }
    if (assignee != null) {
      data['assignee'] = assignee!.toJson();
    }
    data['hours'] = hours;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['ratePerHour'] = ratePerHour;
    data['material'] = material;
    data['description'] = description;
    data['flag'] = flag;
    data['paymentStatus'] = paymentStatus;
    data['totalAmount'] = totalAmount;
    data['id'] = id;
    return data;
  }
}

class CalenderClient {
  String? sId;
  String? name;
  int? phoneNumber;
  String? area;
  String? address;

  CalenderClient(
      {this.sId, this.name, this.phoneNumber, this.area, this.address});

  CalenderClient.fromJson(Map<String, dynamic> json) {
    int? parsedPhoneNumber;
    if (json['phoneNumber'] != null) {
      String phoneNumberString = json['phoneNumber'].toString();
      String digitsOnly = phoneNumberString.replaceAll(RegExp(r'\D'), '');
      parsedPhoneNumber = int.tryParse(digitsOnly);
    }
    sId = json['_id'];
    name = json['name'];
    phoneNumber = parsedPhoneNumber;
    area = json['area'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    data['area'] = area;
    data['address'] = address;
    return data;
  }
}

class Assignee {
  String? sId;
  String? name;
  String? phoneNumber;
  Category? category;

  Assignee({this.sId, this.name, this.phoneNumber, this.category});

  Assignee.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}

class Category {
  String? sId;
  String? categoryName;

  Category({this.sId, this.categoryName});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryName = json['categoryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['categoryName'] = categoryName;
    return data;
  }
}

class Total {
  num? todayBookingHours;
  num? todayBookingAmount;

  Total({this.todayBookingHours, this.todayBookingAmount});

  Total.fromJson(Map<String, dynamic> json) {
    todayBookingHours = json['todayBookingHours'];
    todayBookingAmount = json['todayBookingAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['todayBookingHours'] = todayBookingHours;
    data['todayBookingAmount'] = todayBookingAmount;
    return data;
  }
}
