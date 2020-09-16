import 'package:http/http.dart' as http;
import 'dart:convert';

class Address {
  final String id;
  final String address;
  final String balance;

  Address({this.id, this.address, this.balance});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        id: json['id'],
        address: json['address'],
        balance: json['balance']
    );
  }
}

class Result {
  Address address;
  Result({this.address});
  factory Result.fromJson(Map<String, dynamic> json){
    return Result(
      address: Address.fromJson(json['address']),
    );
  }
}

class User {
  Result result;
  String ok;
  User({this.result, this.ok});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      ok: json['ok'],
      result: Result.fromJson(json['result']),
    );
  }
}

