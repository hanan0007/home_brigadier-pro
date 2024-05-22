class ExpensesResponseModel {
  String? status;
  String? message;
  Data? data;

  ExpensesResponseModel({this.status, this.message, this.data});

  ExpensesResponseModel.fromJson(Map<String, dynamic> json) {
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
  int? recordsTotal;
  int? recordsFiltered;
  List<Original>? original;
  List<Total>? total;

  Data({this.recordsTotal, this.recordsFiltered, this.original, this.total});

  Data.fromJson(Map<String, dynamic> json) {
    recordsTotal = json['recordsTotal'];
    recordsFiltered = json['recordsFiltered'];
    if (json['original'] != null) {
      original = <Original>[];
      json['original'].forEach((v) {
        original!.add(Original.fromJson(v));
      });
    }
    if (json['total'] != null) {
      total = <Total>[];
      json['total'].forEach((v) {
        total!.add(Total.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['recordsTotal'] = recordsTotal;
    data['recordsFiltered'] = recordsFiltered;
    if (original != null) {
      data['original'] = original!.map((v) => v.toJson()).toList();
    }
    if (total != null) {
      data['total'] = total!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Original {
  String? sId;
  String? type;
  String? remarks;
  String? date;
  String? paidBy;
  String? paidVia;
  num? amount;
  String? role;
  String? createdAt;
  String? updatedAt;
  Reciept? reciept;

  Original(
      {this.sId,
      this.type,
      this.remarks,
      this.date,
      this.paidBy,
      this.paidVia,
      this.amount,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.reciept});

  Original.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    remarks = json['remarks'];
    date = json['date'];
    paidBy = json['paidBy'];
    paidVia = json['paidVia'];
    amount = json['amount'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    reciept =
        json['reciept'] != null ? Reciept.fromJson(json['reciept']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['type'] = type;
    data['remarks'] = remarks;
    data['date'] = date;
    data['paidBy'] = paidBy;
    data['paidVia'] = paidVia;
    data['amount'] = amount;
    data['role'] = role;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (reciept != null) {
      data['reciept'] = reciept!.toJson();
    }
    return data;
  }
}

class Reciept {
  String? sId;
  String? fileName;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Reciept({this.sId, this.fileName, this.createdAt, this.updatedAt, this.iV});

  Reciept.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fileName = json['fileName'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['fileName'] = fileName;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}

class Total {
  Null nId;
  num? totalExpenses;

  Total({this.nId, this.totalExpenses});

  Total.fromJson(Map<String, dynamic> json) {
    nId = json['_id'];
    totalExpenses = json['totalExpenses'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = nId;
    data['totalExpenses'] = totalExpenses;
    return data;
  }
}
