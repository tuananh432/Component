import 'package:component/widgets/BottomSheetComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomController extends GetxController{}
class BottomSheetCom extends StatelessWidget {
  BottomSheetComponent bottomSheetComponent = BottomSheetComponent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
      ),
      body: GetBuilder<BottomController>(
        init: BottomController(),
        builder: (_c) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    bottomSheetComponent.showBottomSheetComponent(context: context, height: 300, content: Text('Đây là bottom sheet'));
                    _c.update();
                  },
                  child: Text('Show bottom sheet'))
            ],
          ),
        ),
      ),
    );
  }
}
