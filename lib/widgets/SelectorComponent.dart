import 'package:flutter/material.dart';

class SelectorComponent extends StatelessWidget {
  String text;
  bool value;
  bool isDisableSelector;
  Function onTap;

  SelectorComponent(
      {this.text, this.value, this.isDisableSelector = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisableSelector ? null : onTap,
      child: Row(
        children: [
          SizedBox(width: 10),
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: isDisableSelector
                ? Icon(Icons.check_box_outline_blank_outlined,
                    color: Colors.black12)
                : value == false
                    ? Icon(Icons.check_box_outline_blank_outlined,
                        color: Colors.black12)
                    : Icon(
                        Icons.check_box,
                        color: Color.fromRGBO(251, 126, 0, 1),
                      ),
          ),
          SizedBox(width: 10),
          Text(text != null ? text : '',
              style: TextStyle(
                  color: isDisableSelector
                      ? Colors.black.withOpacity(0.2)
                      : Colors.black)),
        ],
      ),
    );
  }
}
