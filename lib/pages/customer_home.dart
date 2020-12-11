import 'package:dolche/pages/landing_page.dart';
import 'package:dolche/pages/user_account/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class CustomerHome extends StatefulWidget {
  CustomerHome({Key key, this.title}):super(key:key);
  final String title;
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}
class _CustomerHomeState extends State<CustomerHome> {
  int _counter=0;
  _CustomerHomeState();

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new LoginScreen(),
    );

  }
}