class AddExpenseModel {
  String? type;
  String? remarks;
  String? date;
  String? paidBy;
  num? amount;
  String? paidVia;
  String? receiptId;

  AddExpenseModel(
      {this.type,
      this.remarks,
      this.date,
      this.paidBy,
      this.amount,
      this.paidVia,
      this.receiptId});

  AddExpenseModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    remarks = json['remarks'];
    date = json['date'];
    paidBy = json['paidBy'];
    amount = json['amount'];
    paidVia = json['paidVia'];
    receiptId = json['receiptId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['remarks'] = this.remarks;
    data['date'] = this.date;
    data['paidBy'] = this.paidBy;
    data['amount'] = this.amount;
    data['paidVia'] = this.paidVia;
    data['receiptId'] = this.receiptId;
    return data;
  }
}
