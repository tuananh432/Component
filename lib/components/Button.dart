import 'package:component/utils/Style.dart';
import 'package:component/widgets/ButtonComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Back'),
        leading: GestureDetector(
          onTap: () => Get.back(),
            child: Icon(
          Icons.arrow_back
        )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Basic button'),
            SizedBox(height: 10),
            ButtonComponent(
              height: 35,
              width: 100,
              title: 'Button',
              backgroundColor: Color.fromRGBO(194,194,194,0.2),
              onPressed: (){},
              borderColor: Colors.transparent,
            ),
            SizedBox(height: 20),
            Text('Button with left icon'),
            SizedBox(height: 10),
            ButtonComponent(
              height: 35,
              width: 100,
              leftIcon: Icon(Icons.filter_alt_outlined),
              title: 'Button',
              backgroundColor: Color.fromRGBO(194,194,194,0.2),
              onPressed: (){},
              borderColor: Colors.transparent,
            ),
            SizedBox(height: 20),
            Text('Button with left and right icon'),
            SizedBox(height: 10),
            ButtonComponent(
              height: 35,
              width: 150,
              leftIcon: Icon(Icons.filter_alt_outlined),
              title: 'Button',
              backgroundColor: Color.fromRGBO(194,194,194,0.2),
              rightIcon: Icon(Icons.arrow_drop_down),
              onPressed: (){},
              borderColor: Colors.transparent,
            ),
            SizedBox(height: 20),
            Text('Button with color'),
            SizedBox(height: 10),
            ButtonComponent(
              height: 35,
              width: 150,
              leftIcon: Icon(Icons.filter_alt_outlined,color:  Colors.white,),
              title: 'Button',
              textColor: Colors.white,
              backgroundColor: PRIMARY_COLOR,
              rightIcon: Icon(Icons.arrow_drop_down, color: Colors.white,),
              onPressed: (){},
              borderColor: Colors.transparent,
            ),
            SizedBox(height: 20),
            Text('Button with icon only'),
            SizedBox(height: 10),
            ButtonComponent(
              height: 35,
              width: 40,
              leftIcon: Icon(Icons.filter_alt_outlined,size: 20,),
              onPressed: (){},
              backgroundColor: Color.fromRGBO(194,194,194,0.2),
              borderColor: Colors.transparent,
            ),
            SizedBox(height: 20),
            Text('Button disable'),
            SizedBox(height: 10),
            ButtonComponent(
              height: 35,
              width: 100,
              title: 'Button',
              backgroundColor: Color.fromRGBO(194,194,194,0.2),
              onPressed: (){},
              borderColor: Colors.transparent,
              isButtonDisable: true,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
