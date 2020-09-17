import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Head/Swiper.dart';
import 'JsonParse.dart';

class PageBalance extends StatelessWidget {
  User _user;

  PageBalance(this._user);

  double blurSide = 10;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Omega"),
        backgroundColor: Color.fromRGBO(34, 15, 45, 1),
      ),
      body: Container(
        color: Colors.white70,
        width: size.width,
        height: size.height,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        Color.fromRGBO(79, 5, 92, 25),
                        Color.fromRGBO(79, 5, 92, 50),
                        Color.fromRGBO(79, 5, 92, 75),
                        Color.fromRGBO(79, 5, 92, 90),

                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(34, 15, 180, .3),
                          blurRadius: blurSide,
                          offset: Offset(-2.5, 7))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:  EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Баланс счета",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 24,
                              fontFamily: "MPLUS",
                            ),
                          ),
                        ),
//                      Text(
//                        " ${_user.result.address.address}",
//                        style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 16,
//                          fontFamily: "MPLUS",
//                        ),
//                      ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            _user.result.address.balance.del + " DEL",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "MPLUS",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  height: size.height*0.20,child: HeadSwiper(context, _user))
            ],
          ),
        ),
      ),
    );
  }
}



