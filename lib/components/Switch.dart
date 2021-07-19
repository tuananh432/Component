import 'package:component/widgets/SwitchComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool value = true.obs;
}

class SwitchToggle extends StatelessWidget {
  SwitchController c = Get.put(SwitchController());

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
            Text('Toggle switch'),
            SizedBox(height: 15),
            Obx(() => SwitchComponent(
                  toggleValue: c.value.value,
                  onToggle: (val) => c.value.value = !c.value.value,
                )),
            SizedBox(height: 25),
            Text('Disable toggle switch (can\'t tap to change value)'),
            SizedBox(height: 15),
            Obx(() => SwitchComponent(
              toggleValue: c.value.value,
              onToggle: (val) => c.value.value = !c.value.value,
              isDisableToggle: true,
            ))
          ],
        ),
      ),
    );
    ;
  }
}
