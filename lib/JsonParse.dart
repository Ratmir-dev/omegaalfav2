import 'package:http/http.dart' as http;
import 'dart:convert';


class Balance {
  String del;
  Balance({this.del});

  factory Balance.fromJson(Map<String, dynamic> json){
    return Balance(
      del: json['del']
    );
  }
}

class Address {
  final int id;
  final String address;
  final Balance balance;

  Address({this.id, this.address, this.balance});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        id: json['id'],
        address: json['address'],
        balance: Balance.fromJson(json['balance'])
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
  bool ok;
  User({this.result, this.ok});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      ok: json['ok'],
      result: Result.fromJson(json['result']),
    );
  }
}

