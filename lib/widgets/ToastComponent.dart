import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
/* Example call ToastComponent
    TextButton(
       onPressed: (){
        toastComponent.showToast(context: context, message: 'Show toast');
      },
     child: Text('Show toast'))
*/
class ToastComponent {
  showToast({context, String message, Color textColor, Color backgroundColor}) {
    Toast.show(message, context,
        duration: Toast.LENGTH_SHORT,
        gravity: Toast.BOTTOM,
        textColor: textColor != null ? textColor : Colors.white,
        backgroundColor:
            backgroundColor != null ? backgroundColor : Color.fromRGBO(51, 51, 51, 1));
  }
}
