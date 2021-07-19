import 'package:flutter/material.dart';

class SearchBoxComponent extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  double height;
  EdgeInsetsGeometry padding;
  Color backgroundColor;

  SearchBoxComponent(
      {this.controller,
      this.hintText = 'Search',
      this.height,
      this.padding,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height != null ? height : 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor != null
            ? backgroundColor
            : Colors.black.withOpacity(0.05),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Padding(
            padding: padding != null ? padding : EdgeInsets.only(left: 5),
            child: Icon(
              Icons.search,
              color: Colors.black26,
              size: 25,
            ),
          ),
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
