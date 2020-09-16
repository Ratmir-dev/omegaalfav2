import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'JsonParse.dart';

class Balance extends StatelessWidget {
  User _user;
  Balance(this._user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Omega"),
        backgroundColor: Color.fromRGBO(34, 15, 45, 1),
      ),
      body: Column(
        children: <Widget>[
          Text(_user.result.address.balance)
        ],
      ),
    );
  }
}
