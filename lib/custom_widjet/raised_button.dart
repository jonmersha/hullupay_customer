import 'package:dolche/custom_color/custom_color.dart';
import 'package:flutter/material.dart';
import 'custom_text.dart';


class CustomRaisedButton extends StatelessWidget {

  String buttonTitile;
  Function myFunction;

  CustomRaisedButton(this.buttonTitile, this.myFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10.0,right: 10,top: 1.0,bottom: 1.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              side: BorderSide(color: CustomColor.cyan_blue),
          ),
          color: const Color(0xffffffff),
          child: CustomText(buttonTitile,15.9,1.0,CustomColor.cyan_blue,),
          onPressed:myFunction ,
        ),


    );
  }
}
