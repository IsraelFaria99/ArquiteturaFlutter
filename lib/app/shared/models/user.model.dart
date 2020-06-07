class UserModel {
  String email;
  bool active;
  String name;

  UserModel({this.email, this.active, this.name});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    active = json['active'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['active'] = this.active;
    data['name'] = this.name;
    return data;
  }
}
