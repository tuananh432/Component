import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  Color backgroundColor;
  String title;
  Color textColor;
  Color borderColor;
  double borderRadius;
  double boxShadowOpacity;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
  double textSize;
  double iconSize;
  double height;
  double width;
  Widget leftIcon;
  Widget rightIcon;
  bool isButtonDisable;
  Function onPressed;
  Function onLongPressed;

  ButtonComponent(
      {this.backgroundColor,
      this.title,
      this.textColor = Colors.black,
      this.borderRadius = 5,
      this.boxShadowOpacity = 0,
      this.padding,
      this.margin,
      this.borderColor,
      this.textSize = 14,
      this.iconSize,
      this.height,
      this.width,
      this.leftIcon,
      this.rightIcon,
      this.isButtonDisable = false,
      this.onPressed,
      this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(boxShadowOpacity),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          border: Border.all(
              color: borderColor != null
                  ? borderColor
                  : Colors.transparent)),
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: isButtonDisable ? null : onPressed,
                onLongPress: isButtonDisable ? null : onLongPressed,
                padding: padding != null
                    ? padding
                    : EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                textColor:
                    isButtonDisable ? Color.fromRGBO(0, 0, 0, 0.15) : textColor,
                color: isButtonDisable
                    ? Color.fromRGBO(0, 0, 0, 0.05)
                    : Colors.transparent,
                minWidth: width,
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: leftIcon != null && title != null
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [
                        leftIcon != null ? leftIcon : Container(),
                        title != null ? SizedBox(width: 8) : Container(),
                        Text(title != null ? title : '',
                            style: TextStyle(
                                fontSize: textSize,
                                color: isButtonDisable
                                    ? Color.fromRGBO(0, 0, 0, 0.15)
                                    : textColor))
                      ],
                    )),
                    rightIcon != null ? rightIcon : Container(),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
