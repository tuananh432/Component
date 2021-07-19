import 'package:component/components/BottomSheetCom.dart';
import 'package:component/components/BreadCrumbCom.dart';
import 'package:component/components/Button.dart';
import 'package:component/components/ButtonSlideCom.dart';
import 'package:component/components/CalendarCom.dart';
import 'package:component/components/ChipCom.dart';
import 'package:component/components/CommentCom.dart';
import 'package:component/components/DialogCom.dart';
import 'package:component/components/FileUploadCom.dart';
import 'package:component/components/ImageCom.dart';
import 'package:component/components/ProgressCom.dart';
import 'package:component/components/SearchCom.dart';
import 'package:component/components/Selector.dart';
import 'package:component/components/SeparatorCom.dart';
import 'package:component/components/Slide.dart';
import 'package:component/components/SlideShowCom.dart';
import 'package:component/components/Switch.dart';
import 'package:component/components/TabCom.dart';
import 'package:component/components/TextfieldCom.dart';
import 'package:component/components/ToastCom.dart';
import 'package:component/components/UserCom.dart';
import 'package:component/widgets/ButtonComponent.dart';
import 'package:component/widgets/ToastComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            children: [
              ButtonComponent(
                title: 'Button component',
                onPressed: () => Get.to(Button()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Selector',
                onPressed: () => Get.to(Selector()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Slide',
                onPressed: () => Get.to(Slide()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Toggle switch',
                onPressed: () => Get.to(SwitchToggle()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Dialog',
                onPressed: () => Get.to(DialogCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Textfield',
                onPressed: () => Get.to(TextfieldCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Search box',
                onPressed: () => Get.to(SearchCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'User component',
                onPressed: () => Get.to(UserCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Calendar date',
                onPressed: () => Get.to(CalendarCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Comment component',
                onPressed: () => Get.to(CommentCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Tab component',
                onPressed: () => Get.to(TabCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Separator',
                onPressed: () => Get.to(SeparatorCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Button Slide',
                onPressed: () => Get.to(ButtonSlideCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Chip',
                onPressed: () => Get.to(ChipCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Image component',
                onPressed: () => Get.to(ImageCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'SlideShow',
                onPressed: () => Get.to(SlideShowCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Progress',
                onPressed: () => Get.to(ProgressCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Bottom sheet',
                onPressed: () => Get.to(BottomSheetCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Toast',
                onPressed: () => Get.to(ToastCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'File upload',
                onPressed: () => Get.to(FileUploadCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
              SizedBox(height: 10),
              ButtonComponent(
                title: 'Breadcrumb',
                onPressed: () => Get.to(BreadcrumbCom()),
                textSize: 16,
                backgroundColor: Colors.white,
                boxShadowOpacity: 0,
                rightIcon: Icon(Icons.arrow_forward_ios_sharp,
                    size: 18, color: Colors.black),
                borderColor: Color.fromRGBO(112, 112, 112, 0.3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
