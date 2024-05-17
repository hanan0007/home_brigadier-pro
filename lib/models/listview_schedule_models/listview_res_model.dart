class ListViewResponseModel {
  String? status;
  String? message;
  Data? data;

  ListViewResponseModel({this.status, this.message, this.data});

  ListViewResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  num? draw;
  num? recordsTotal;
  num? recordsFiltered;
  List<Original>? original;
  Total? total;

  Data(
      {this.draw,
      this.recordsTotal,
      this.recordsFiltered,
      this.original,
      this.total});

  Data.fromJson(Map<String, dynamic> json) {
    draw = json['draw'];
    recordsTotal = json['recordsTotal'];
    recordsFiltered = json['recordsFiltered'];
    if (json['original'] != null) {
      original = <Original>[];
      json['original'].forEach((v) {
        original!.add(Original.fromJson(v));
      });
    }
    total = json['total'] != null ? Total.fromJson(json['total']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['draw'] = draw;
    data['recordsTotal'] = recordsTotal;
    data['recordsFiltered'] = recordsFiltered;
    if (original != null) {
      data['original'] = original!.map((v) => v.toJson()).toList();
    }
    if (total != null) {
      data['total'] = total!.toJson();
    }
    return data;
  }
}

class Original {
  String? sId;
  String? bookingName;
  Client? client;
  Assignee? assignee;
  Null subscription;
  num? hours;
  String? startTime;
  String? endTime;
  num? ratePerHour;
  bool? material;
  String? description;
  String? flag;
  String? paymentStatus;
  num? totalAmount;
  String? updatedAt;
  String? lastUpdatedBy;

  Original(
      {this.sId,
      this.bookingName,
      this.client,
      this.assignee,
      this.subscription,
      this.hours,
      this.startTime,
      this.endTime,
      this.ratePerHour,
      this.material,
      this.description,
      this.flag,
      this.paymentStatus,
      this.totalAmount,
      this.updatedAt,
      this.lastUpdatedBy});

  Original.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    bookingName = json['bookingName'];
    client =
        json['client'] != null ? Client.fromJson(json['client']) : null;
    assignee = json['assignee'] != null
        ? Assignee.fromJson(json['assignee'])
        : null;
    subscription = json['subscription'];
    hours = json['hours'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    ratePerHour = json['ratePerHour'];
    material = json['material'];
    description = json['description'];
    flag = json['flag'];
    paymentStatus = json['paymentStatus'];
    totalAmount = json['totalAmount'];
    updatedAt = json['updatedAt'];
    lastUpdatedBy = json['lastUpdatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['bookingName'] = bookingName;
    if (client != null) {
      data['client'] = client!.toJson();
    }
    if (assignee != null) {
      data['assignee'] = assignee!.toJson();
    }
    data['subscription'] = subscription;
    data['hours'] = hours;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['ratePerHour'] = ratePerHour;
    data['material'] = material;
    data['description'] = description;
    data['flag'] = flag;
    data['paymentStatus'] = paymentStatus;
    data['totalAmount'] = totalAmount;
    data['updatedAt'] = updatedAt;
    data['lastUpdatedBy'] = lastUpdatedBy;
    return data;
  }
}

class Client {
  String? sId;
  String? name;
  int? phoneNumber;
  String? address;

  Client({this.sId, this.name, this.phoneNumber, this.address});

  Client.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    data['address'] = address;
    return data;
  }
}

class Assignee {
  String? sId;
  String? name;
  int? phoneNumber;
  Category? category;

  Assignee({this.sId, this.name, this.phoneNumber, this.category});

  Assignee.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    category = json['category'] != null
        ? Category.fromJson(json['category'])
        : null;
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
  num? totalHours;
  num? totalDueAmount;
  num? totalAmount;

  Total({this.totalHours, this.totalDueAmount, this.totalAmount});

  Total.fromJson(Map<String, dynamic> json) {
    totalHours = json['totalHours'];
    totalDueAmount = json['totalDueAmount'];
    totalAmount = json['totalAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalHours'] = totalHours;
    data['totalDueAmount'] = totalDueAmount;
    data['totalAmount'] = totalAmount;
    return data;
  }
}
