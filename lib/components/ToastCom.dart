import 'package:component/widgets/ToastComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ToastController extends GetxController{}
class ToastCom extends StatelessWidget {
  ToastComponent toastComponent = ToastComponent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
      ),
      body: GetBuilder<ToastController>(
        init: ToastController(),
        builder: (_c) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: (){
                    toastComponent.showToast(context: context, message: 'Show toast');
                  },
                  child: Text('Show toast'))
            ],
          ),
        ),
      ),
    );
  }
}
