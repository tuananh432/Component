import 'package:component/widgets/CommentComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentCom extends StatelessWidget {
  const CommentCom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommentComponent()
            ],
          ),
        ),
      ),
    );
  }
}
