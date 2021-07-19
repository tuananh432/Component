import 'package:flutter/material.dart';

class TextfieldComponent extends StatelessWidget {
  double height;
  double width;
  double paddingLeft;
  double rightIconSize;
  String hintText;
  Color borderColor;
  Color backgroundColor;
  Color hintTextColor;
  TextEditingController controller;
  bool isDisableTextfield;
  bool obscureText;
  EdgeInsetsGeometry contentPadding;
  TextInputType keyboardType;
  Color textColor;
  Widget leftIcon;
  Widget rightIcon;

  TextfieldComponent(
      {this.height,
      this.width,
      this.paddingLeft = 15,
      this.rightIconSize = 26,
      this.hintText,
      this.borderColor,
      this.backgroundColor,
      this.hintTextColor,
      this.controller,
      this.obscureText = false,
      this.keyboardType,
      this.textColor,
      this.isDisableTextfield = false,
      this.leftIcon,
      this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(left: paddingLeft),
      decoration: BoxDecoration(
          border: Border.all(
              color: borderColor != null
                  ? borderColor
                  : Color.fromRGBO(112, 112, 112, 0.1)),
          color: backgroundColor != null
              ? backgroundColor
              : Color.fromRGBO(194, 194, 194, 0.1),
          borderRadius: BorderRadius.circular(3)),
      child: TextFormField(
        readOnly: isDisableTextfield,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: TextStyle(color: textColor != null ? textColor : Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: hintTextColor != null
                  ? hintTextColor
                  : Colors.black.withOpacity(0.5)),
          icon: leftIcon,
          contentPadding: contentPadding,
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 10),
            child: rightIcon,
          ),
          suffixIconConstraints: BoxConstraints(minHeight: 26, minWidth: 26),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
