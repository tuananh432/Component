import 'package:component/widgets/ImageComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageCom extends StatelessWidget {

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
            ImageComponent(
              urlImageNetwork: 'https://i.pinimg.com/564x/42/85/69/428569eb035040c08a32f16321dbe2be.jpg',
            ),
            SizedBox(height: 10),
            ImageComponent(
              urlImageNetwork: 'https://i.pinimg.com/564x/42/85/69/428569eb035040c08a32f16321dbe2be.jpg',
            ),
            SizedBox(height: 10),
            ImageComponent(
              urlImageNetwork: 'https://i.pinimg.com/564x/42/85/69/428569eb035040c08a32f16321dbe2be.jpg',
            )
          ],
        ),
      ),
    );
  }
}
