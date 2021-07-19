import 'package:component/widgets/SearchBoxComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchCom extends StatelessWidget {
  const SearchCom({Key key}) : super(key: key);

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
            SearchBoxComponent()
          ],
        ),
      ),
    );
  }
}
