class ExpensesRequestModel {
  int? draw;
  List<Columns>? columns;
  String? endDate;
  int? start;
  int? length;
  List<Order>? order;
  Search? search;
  String? startDate;

  ExpensesRequestModel(
      {this.draw,
      this.columns,
      this.endDate,
      this.start,
      this.length,
      this.order,
      this.search,
      this.startDate});

  ExpensesRequestModel.fromJson(Map<String, dynamic> json) {
    draw = json['draw'];
    if (json['columns'] != null) {
      columns = <Columns>[];
      json['columns'].forEach((v) {
        columns!.add(Columns.fromJson(v));
      });
    }
    endDate = json['endDate'];
    start = json['start'];
    length = json['length'];
    if (json['order'] != null) {
      order = <Order>[];
      json['order'].forEach((v) {
        order!.add(Order.fromJson(v));
      });
    }
    search =
        json['search'] != null ? Search.fromJson(json['search']) : null;
    startDate = json['startDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['draw'] = draw;
    if (columns != null) {
      data['columns'] = columns!.map((v) => v.toJson()).toList();
    }
    data['endDate'] = endDate;
    data['start'] = start;
    data['length'] = length;
    if (order != null) {
      data['order'] = order!.map((v) => v.toJson()).toList();
    }
    if (search != null) {
      data['search'] = search!.toJson();
    }
    data['startDate'] = startDate;
    return data;
  }
}

class Columns {
  String? data;
  String? name;
  bool? searchable;
  bool? orderable;
  Search? search;

  Columns({this.data, this.name, this.searchable, this.orderable, this.search});

  Columns.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    name = json['name'];
    searchable = json['searchable'];
    orderable = json['orderable'];
    search =
        json['search'] != null ? Search.fromJson(json['search']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data;
    data['name'] = name;
    data['searchable'] = searchable;
    data['orderable'] = orderable;
    if (search != null) {
      data['search'] = search!.toJson();
    }
    return data;
  }
}

class Search {
  String? value;
  bool? regex;

  Search({this.value, this.regex});

  Search.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    regex = json['regex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['regex'] = regex;
    return data;
  }
}

class Order {
  int? column;
  String? dir;

  Order({this.column, this.dir});

  Order.fromJson(Map<String, dynamic> json) {
    column = json['column'];
    dir = json['dir'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['column'] = column;
    data['dir'] = dir;
    return data;
  }
}
