import 'package:component/widgets/ButtonSlideComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ButtonSlideController extends GetxController{
  RxDouble value = 50.0.obs;
}
class ButtonSlideCom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
      ),
      body: GetBuilder<ButtonSlideController>(
        init: ButtonSlideController(),
        builder: (c) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonSlideComponent(
                value: c.value.value,
                onChanged: (val){
                  c.value.value = val;
                  c.update();
                },
              ),
              Text('Value : ' + c.value.value.toString())
            ],
          ),
        ),
      ),
    );
  }
}
