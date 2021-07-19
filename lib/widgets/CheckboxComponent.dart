import 'package:flutter/material.dart';

class CheckboxComponent extends StatelessWidget {
  String title;
  bool valueCheck;
  Color activeColor;
  Color focusColor;
  Color textColor;
  Color checkColor;
  double marginVertical;
  double marginHorizontal;
  bool isDisableCheckbox;
  void Function(bool) onChanged;


  CheckboxComponent(
      {this.title,
      this.valueCheck,
      this.activeColor,
      this.focusColor,
      this.textColor = Colors.black,
      this.checkColor = Colors.white,
      this.marginVertical = 3,
      this.marginHorizontal = 3,
      this.isDisableCheckbox = false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginVertical, horizontal: marginHorizontal),
      child: Row(
        children: [
          Checkbox(
              value: valueCheck,
              onChanged: isDisableCheckbox ? null : onChanged,
            activeColor: isDisableCheckbox ? Color.fromRGBO(112,112,112,0.2) : activeColor,
            focusColor: isDisableCheckbox ? Color.fromRGBO(112,112,112,0.2) : focusColor,
            checkColor: isDisableCheckbox ? Color.fromRGBO(112,112,112,0.2) : checkColor,
          ),
          Text(title != null ? title : '', style: TextStyle(color: isDisableCheckbox ? Color.fromRGBO(112,112,112,0.2) : textColor))
        ],
      ),
    );
  }
}
