import 'package:component/utils/Style.dart';
import 'package:flutter/material.dart';

class ChipComponent extends StatelessWidget {
  String text;
  double height;
  double width;
  double borderRadius;
  double boxShadow;
  double fontSize;
  Color backgroundColor;
  Color textColor;
  EdgeInsetsGeometry padding;

  ChipComponent(
      {this.text,
      this.height = 20,
      this.width = 50,
      this.borderRadius = 2,
      this.boxShadow = 0,
      this.fontSize = 11,
      this.backgroundColor,
      this.textColor = Colors.white,
      this.padding,
      this.margin});

  EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: backgroundColor != null ? backgroundColor : PRIMARY_COLOR,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(boxShadow),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ]),
      child: Text(text != null ? text : '',
          style: TextStyle(fontSize: fontSize, color: textColor)),
    );
  }
}
