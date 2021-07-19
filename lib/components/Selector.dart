import 'package:component/widgets/SelectorComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectorController extends GetxController {
  RxBool selectValue = false.obs;
}

class Selector extends StatelessWidget {
  SelectorController c = Get.put(SelectorController());

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
            Text('Checkbox'),
            SizedBox(height: 15),
            Obx(() => SelectorComponent(
                  text: 'Text',
                  value: c.selectValue.value,
                  onTap: () => c.selectValue.value = !c.selectValue.value,
                )),
            SizedBox(height: 25),
            Text('Disable checkbox'),
            SizedBox(height: 15),
            Obx(() => SelectorComponent(
              text: 'Text',
              value: c.selectValue.value,
              onTap: () => c.selectValue.value = !c.selectValue.value,
              isDisableSelector: true,
            )),
          ],
        ),
      ),
    );
    ;
  }
}
