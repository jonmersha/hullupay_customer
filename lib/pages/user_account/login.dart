



import 'dart:convert';

import 'dart:convert' as convert;

import 'package:dolche/custom_widjet/SingnUp.dart';
import 'package:dolche/composed_widjet/logo_text.dart';
import 'package:dolche/custom_widjet/raised_button.dart';
import 'package:dolche/custom_widjet/text_field.dart';

import 'package:dolche/pages/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget{
  LoginScreenState createState()=>LoginScreenState();

}

class LoginScreenState extends State<LoginScreen>{
  final   password=TextEditingController();
  final   userName=TextEditingController();

  String gotoHomeScreen(){
    setState(() {
      //Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>new SignUpScreen()),
     );




    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

padding: EdgeInsets.only(top: 60.0),
          color: Colors.white,
              child:ListView(
                padding: EdgeInsets.all(30.0),
                children: [
                  LogoText(),
                  Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Mobile Number or Email Id' , style: TextStyle(fontSize: 20.0),)
                  ),
                  CustomEditText(userName,' Please Inter your Mobile/email'),

                  Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Password' , style: TextStyle(fontSize: 20.0),)
                  ),
                  CustomEditTextPassword(password,'Please Inter Your Password'),

                //RaisedButton(onPressed: login)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomRaisedButton('Create Account', gotoHomeScreen ),
                        CustomRaisedButton('login', login),
                      ],
                    ),
                  ),
                  FlatButton(onPressed: login, child: Text('Forget the Password'))
                ],
              )

        ),
      ),
    );
  }

  void login() async{
    final http.Response response = await http.post(
      'https://hullupay.herokuapp.com/customer/language',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>
      {
        "customerMobile": "0911643491"
      }
      ),

    );
    setState(() {
      if(response.statusCode==200){
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>new LandingPage()));
        var val=convert.jsonDecode(response.body);
        userName.text=val['status'];
      }
    });
  }
}
