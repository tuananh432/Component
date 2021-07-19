import 'package:component/widgets/ProgressComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogComponent {
/* Example how to call showDialog
*  TextButton(
              onPressed: () => DialogComponent().showAlert(
                  context: context,
                  title: "Dialog",
                  content: Text('Decription'),
                  confirm: () => print('ok')),
              child: const Text('Show Dialog'),
            ),
*/
  Future<void> showAlert(
      {BuildContext context,
      String title,
      Widget content,
      Function confirm,
      String confirmText,
      bool hideCancelText = false,
      double height = 45,
      bool haveProgress = false}) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: content != null ? Container(
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              content,
              haveProgress ? ProgressComponent(isCircularProgress: false) : Container()
            ],
          ),
        ) : null,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        actions: <Widget>[
          hideCancelText
              ? Text('')
              : TextButton(
                  onPressed: () => Get.back(),
                  child: Text('Cancel', style: TextStyle(color: Colors.black)),
                ),
          TextButton(
            onPressed: confirm,
            child: Text(confirmText != null ? confirmText : 'OK',
                style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
