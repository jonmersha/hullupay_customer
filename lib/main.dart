import 'package:dolche/pages/customer_home.dart';
import 'package:flutter/material.dart';


void main() => runApp(CustomerApp());
class CustomerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hulluPay",
      theme: ThemeData(
        fontFamily: 'Perputua'
      ),
      home: CustomerHome(title:"hulluPay"),
    );

  }

}









  