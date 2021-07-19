import 'package:component/utils/Style.dart';
import 'package:flutter/material.dart';

class ProgressComponent extends StatelessWidget {
  bool isCircularProgress;
  double height;
  double width;
  EdgeInsetsGeometry margin;
  Color color;

  ProgressComponent(
      {this.isCircularProgress = true,
      this.height = 6,
      this.width = 350,
      this.margin,
      this.color});

  @override
  Widget build(BuildContext context) {
    return isCircularProgress
        ? CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
                color != null ? color : PRIMARY_COLOR),
          )
        : Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.05)),
                borderRadius: BorderRadius.circular(5)),
            height: height,
            width: width,
            margin: margin != null ? margin : EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: LinearProgressIndicator(
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(
                  color != null ? color : PRIMARY_COLOR),
            ),
          );
  }
}
