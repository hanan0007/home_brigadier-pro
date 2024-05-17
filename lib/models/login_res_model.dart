class LoginResponseModel {
  String? status;
  String? message;
  Data? data;

  LoginResponseModel({this.status, this.message, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
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
  String? token;
  UserDetails? userDetails;

  Data({this.token, this.userDetails});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userDetails = json['userDetails'] != null
        ? UserDetails.fromJson(json['userDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    if (userDetails != null) {
      data['userDetails'] = userDetails!.toJson();
    }
    return data;
  }
}

class UserDetails {
  String? sId;
  String? name;
  String? email;
  String? profileUrl;
  String? role;
  int? walletBallance;

  UserDetails(
      {this.sId,
      this.name,
      this.email,
      this.profileUrl,
      this.role,
      this.walletBallance});

  UserDetails.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    profileUrl = json['profileUrl'];
    role = json['role'];
    walletBallance = json['walletBallance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['email'] = email;
    data['profileUrl'] = profileUrl;
    data['role'] = role;
    data['walletBallance'] = walletBallance;
    return data;
  }
}
