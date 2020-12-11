
import 'package:dolche/custom_color/custom_color.dart';
import 'package:dolche/custom_widjet/custom_text.dart';
import 'package:flutter/material.dart';




// ignore: must_be_immutable
class DrowerImage extends StatelessWidget {
  String imageIcon;
  String menuTitle;
  int operationSelector;
  BuildContext context;

  DrowerImage(this.imageIcon, this.menuTitle,this.operationSelector,this.context);
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(0.0),

      child: Wrap(
        children: <Widget>[
          Container(
              child: Center(
                child: CircleAvatar(
                  radius: 25,

                  child: FlatButton(
                    //color: Colors.green,
                    padding:  const EdgeInsets.all(0.0),
                    child: Image.asset('images/${this.imageIcon}'),
                    onPressed: ()=> {}
                    ,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(2.0), // border width
              decoration: new BoxDecoration(
                color: CustomColor.black, // border color
                shape: BoxShape.circle,
              )
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: CustomText(this.menuTitle,12.0,1.5,
                  const Color(0xFFFFFFFF)),
            ),
          ),
        ],
      ),
    );
  }




}
