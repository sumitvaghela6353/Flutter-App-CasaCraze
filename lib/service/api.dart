import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  late String email;
  late String username;
  late String mobile;
  late String password;
  User({email, mobile, password, username}) {
    this.email = email;
    this.password = password;
    this.mobile = mobile;
    this.username = username;
  }
  // User({required this.email,required this.username,required this.mobile,required this.password});
  // User({this.email, this.username, this.mobile, this.password});
  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        username: json["username"],
        mobile: json["mobile"],
        password: json["password"],
      );
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> user = Map<String, dynamic>();
    user["email"] = email;
    user["username"] = this.username;
    user["mobile"] = this.mobile;
    user["password"] = this.password;
    return user;
  }
}


class Api {
  static const baseUrl = "http://192.168.86.11:3000/";

  static signin(Map user) async {
    print(user);
    var url = Uri.parse("${baseUrl}signin");

    try {
      final result = await http.post(url, body: user);
      if (result.statusCode == 201) {
        var data = jsonDecode(result.body.toString());

        print(data);
        return true;
      } else {
        print("Failed to get data");
        return false;
      }
    } catch (err) {
      print("Error occured");
      print(err);
      return false;
    }
  }

  static signup(Map user) async {
    print(user);
    var url = Uri.parse("${baseUrl}signup");

    try {
      final result = await http.post(url, body: user);
      if (result.statusCode == 201) {
        var data = jsonDecode(result.body.toString());
        print(data);
        return true;
      } else {
        print("Failed to get data");
        return false;
      }
    } catch (err) {
      print("Error occured");
      print(err);
      return false;
    }
  }

  static profile(Map user) async {
    print(user);
    var url = Uri.parse("${baseUrl}profile");

    try {
      final result = await http.post(url, body: user);
      if (result.statusCode == 300) {
        var data = jsonDecode(result.body.toString());
        print(data);
        return true;
      } else {
        print("Failed to get data");
        return false;
      }
    } catch (err) {
      print("Error occured");
      print(err);
      return false;
    }
  }
}
