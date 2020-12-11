import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double textSize;
  double spacing;
  Color textColor;
  CustomText(this.text,this.textSize,this.spacing,this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          style: TextStyle(color: textColor,
              fontSize: textSize,
              letterSpacing:spacing),
          ),
    );
  }
}
