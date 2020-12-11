import 'package:dolche/custom_color/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CustomEditText extends StatelessWidget {
  var  controller=TextEditingController();
  String hintText;
  Colors mainColor;
  Colors hintColor;
  CustomEditText(this.controller,this.hintText);
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 2),
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(30.0),
          border: Border.all(
              width: 1, //
              color:CustomColor.cyan_blue//                 <--- border width here
          ),
        ),
          child: TextField(
            style: TextStyle(
                color: CustomColor.cyan_blue,
                fontSize: 20.0

            ),
            controller: controller,
            cursorColor: CustomColor.cyan_blue,
            inputFormatters: [LengthLimitingTextInputFormatter(13)],
            keyboardType:TextInputType.numberWithOptions(
            ) ,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: CustomColor.cyan_blue)
            ),
          ),

      );
  }
}
class CustomEditTextPassword extends StatelessWidget {

  var  controller=TextEditingController();
  String hintText;

  CustomEditTextPassword(this.controller,this.hintText);
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 2),
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(30.0),
          border: Border.all(
              width: 1, //
              color:CustomColor.cyan_blue//                 <--- border width here
          ),
        ),

          child: TextField(
            cursorColor: CustomColor.cyan_blue,
            style: TextStyle(
                color: CustomColor.cyan_blue,
                    fontSize: 20.0
            ),
            obscureText: true,
            controller: controller,
            inputFormatters: [LengthLimitingTextInputFormatter(30),],
            keyboardType:TextInputType.numberWithOptions(
            ) ,

            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: CustomColor.cyan_blue)
            ),

          ),

      );
  }
}
class EditTextWhite extends StatelessWidget {

  var  controller=TextEditingController();
  String hintText;
  EditTextWhite(this.controller,this.hintText);
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 10),
        child: TextField(
          controller: controller,
          cursorColor: CustomColor.cyan_blue,
          style: TextStyle(
              color: CustomColor.cyan_blue
          ),


          inputFormatters: [LengthLimitingTextInputFormatter(50),],
          keyboardType:TextInputType.numberWithOptions(
          ) ,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: CustomColor.cyan_blue),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: CustomColor.cyan_blue)
            ),
            labelText: hintText,
            labelStyle: TextStyle(
                color: CustomColor.cyan_blue),
          ),
        ),
      );
  }
}
