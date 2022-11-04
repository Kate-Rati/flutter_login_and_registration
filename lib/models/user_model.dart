import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.email,
    this.nationality,
    this.natId,
    this.password,
  });

  String? natId;
  String? nationality;
  String? email;
  String? password;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        nationality: json["nationality"],
        email: json["email"],
        natId: json["natId"] ?? "num",
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "natId": natId,
        "nationality": nationality,
        "password": password,
      };
}
