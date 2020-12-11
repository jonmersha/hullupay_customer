import 'package:dolche/custom_color/custom_color.dart';
import 'package:flutter/material.dart';
class LogoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
    text: 'hullu',
    style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: Colors.amber,
    ),
    children: [
    TextSpan(
    text: 'P',
    style: TextStyle(color: Colors.black, fontSize: 50),
    ),
    TextSpan(
    text: 'ay',
    style: TextStyle(color: Colors.black, fontSize: 30),
    ),
    ]),
    );;
  }
}
