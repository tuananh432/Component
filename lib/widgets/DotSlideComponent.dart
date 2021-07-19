import 'package:component/utils/Style.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class DotSlideComponent extends StatelessWidget {
  int length;
  int currentPosition;
  double size;
  Color activeColor;
  Color inactiveColor;
  double spacing;
  void Function(double) onTap;

  DotSlideComponent(
      {@required this.length,
      @required this.currentPosition,
      @required this.onTap,
      this.size = 9,
      this.spacing = 5,
      this.activeColor,
      this.inactiveColor});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: length,
      position: currentPosition.toDouble(),
      decorator: DotsDecorator(
        size: Size.square(size),
        activeSize: Size.square(size),
        spacing: EdgeInsets.symmetric(horizontal: spacing),
        color: inactiveColor != null
            ? inactiveColor
            : Color.fromRGBO(194, 194, 194, 1),
        activeColor: activeColor != null ? inactiveColor : PRIMARY_COLOR,
      ),
      onTap: onTap,
    );
  }
}
