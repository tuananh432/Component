import 'package:component/widgets/TextfieldComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextfieldCom extends StatelessWidget {

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
            Text('Textfield basic'),
            SizedBox(height: 15),
            TextfieldComponent(
              height: 50,
              width: Get.width,
              hintText: 'Nhập vào đây',
            ),
            SizedBox(height: 20),
            Text('Textfield with icon'),
            SizedBox(height: 15),
            TextfieldComponent(
              height: 50,
              width: Get.width,
              hintText: 'Nhập vào đây',
              leftIcon: Icon(Icons.account_circle_rounded, color: Colors.black),
              rightIcon: Icon(Icons.arrow_drop_down, color: Colors.black,),
            )
          ],
        ),
      ),
    );
  }
}
