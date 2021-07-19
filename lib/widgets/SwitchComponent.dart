import 'package:component/utils/Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchComponent extends StatelessWidget {
  Color activeColor;
  Color inactiveColor;
  Color inactiveToggleColor;
  double borderRadius;
  double padding;
  double height;
  double width;
  double toggleSize;
  bool toggleValue;
  bool isDisableToggle;
  void Function(bool) onToggle;

  SwitchComponent(
      {this.activeColor,
      this.inactiveColor = Colors.white,
      this.inactiveToggleColor = Colors.black26,
      this.borderRadius = 50,
      this.padding = 0.5,
      this.height = 18,
      this.width = 40,
      this.toggleSize = 17,
      this.toggleValue = false,
      this.isDisableToggle = false,
      @required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      inactiveSwitchBorder: isDisableToggle
          ? Border.all(color: Color.fromRGBO(112, 112, 112, 0.2))
          : Border.all(color: Colors.black45),
      inactiveToggleBorder: isDisableToggle
          ? Border.all(color: Color.fromRGBO(112, 112, 112, 0.2))
          : Border.all(color: Colors.black45),
      inactiveToggleColor: isDisableToggle
          ? Color.fromRGBO(194, 194, 194, 0.2)
          : inactiveToggleColor,
      activeToggleColor: isDisableToggle ? Color.fromRGBO(251,126,0,0.3) : Colors.white,
      width: width,
      height: height,
      toggleSize: toggleSize,
      activeColor:
          isDisableToggle ? Color.fromRGBO(251, 126, 0, 0.4) : (activeColor != null? activeColor : PRIMARY_COLOR),
      inactiveColor:
          isDisableToggle ? Color.fromRGBO(194, 194, 194, 0.2) : inactiveColor,
      value: toggleValue,
      borderRadius: borderRadius,
      padding: padding,
      showOnOff: false,
      onToggle: isDisableToggle ? null : onToggle,
    );
  }
}
