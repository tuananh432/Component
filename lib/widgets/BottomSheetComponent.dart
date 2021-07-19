import 'package:flutter/material.dart';
/* Example how to call BottomSheetComponent
    TextButton(
       onPressed: () {
       bottomSheetComponent.showBottomSheetComponent(context: context, height: 300, content: Text('Đây là bottom sheet'));
       _c.update();
      },
     child: Text('Show bottom sheet'))

* */
class BottomSheetComponent {
  showBottomSheetComponent({context, double height = 300, Widget content}) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              height: 300,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              child: content,
            ),
          );
        });
  }
}
