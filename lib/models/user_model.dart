import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.email,
    this.nationality,
    this.id,
    this.password,
  });


  String? id;
  String? nationality;
  String? email;
  String? password;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    nationality: json["nationality"],
    email: json["email"],
    id: json["ID"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "ID": id,
    "nationality": nationality,
    "password": password,
  };
}