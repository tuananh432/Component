import 'package:component/widgets/DotSlideComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlideController extends GetxController {
  RxInt currentPosition = 0.obs;
}

class Slide extends StatelessWidget {
  SlideController c = Get.put(SlideController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tap vào từng chấm để chọn vị trí!'),
            SizedBox(height: 15),
            Obx(() => DotSlideComponent(
                  length: 5,
                  currentPosition: c.currentPosition.value,
                  onTap: (po) => c.currentPosition.value = po.toInt(),
                ))
          ],
        ),
      ),
    );
    ;
  }
}
