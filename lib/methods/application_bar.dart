import 'package:dolche/custom_color/custom_color.dart';
import 'package:dolche/custom_widjet/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget{
  String title;
  ApplicationBar(this.title);
  @override
  Widget build(BuildContext context) {
    return this.buildPreferredSize();
  }

  PreferredSize buildPreferredSize() {
    return PreferredSize(
      preferredSize:Size.fromHeight(150.0),
      child: AppBar(
        backgroundColor: CustomColor.black,
        flexibleSpace: Container(
          color: CustomColor.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Wrap(
              children: <Widget>[
                Center(
                  child: Image.asset('images/logo.png',height: 80,),
                ),
                Center(child: CustomText(title,  20.5,2.5,const Color(0xff00aeef),))
              ],
            ),
          ),
        ),

        ),
      );

  }

}