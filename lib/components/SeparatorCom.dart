import 'package:component/widgets/SeparatorComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeparatorCom extends StatelessWidget {
  const SeparatorCom({Key key}) : super(key: key);

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
            Text('Line separator'),
            SizedBox(height: 15),
            Divider(),
            SizedBox(height: 20),
            Text('Separator with hyper text'),
            SizedBox(height: 15),
            SepatatorComponent(
              text: 'Bình luận',
              num: 99,
            ),
            SizedBox(height: 20),
            Text('Separator without hyper text'),
            SizedBox(height: 15),
            SepatatorComponent(
              text: 'Bình luận',
              num: 99,
              haveTextHyperLink: false,
            ),
          ],
        ),
      ),
    );
  }
}
