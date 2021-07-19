import 'package:component/utils/Style.dart';
import 'package:component/widgets/ImageComponent.dart';
import 'package:component/widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const List<dynamic> image = [
  {'urlImage': 'https://upanh123.com/wp-content/uploads/2021/03/hinh-anh-cute13-1024x1024.jpg'},
  {'urlImage': 'https://upanh123.com/wp-content/uploads/2021/03/hinh-anh-cute13-1024x1024.jpg'},
  {'urlImage': 'https://upanh123.com/wp-content/uploads/2021/03/hinh-anh-cute13-1024x1024.jpg'},
  {'urlImage': 'https://upanh123.com/wp-content/uploads/2021/03/hinh-anh-cute13-1024x1024.jpg'},
];

class FileUploadController extends GetxController {
  Size parent = Size.zero;
  RxDouble conlai = 0.0.obs;
  RxDouble congdon = 100.0.obs;
}

class FileUploadCom extends StatelessWidget {
  double lai = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Back'),
          leading: GestureDetector(onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
        ),
        body: GetBuilder<FileUploadController>(
          init: FileUploadController(),
          builder: (_controller) =>
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 500,
                      width: Get.width,
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.04), borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SizeProviderWidget(
                                onChildSize: (size) {
                                  print(size);
                                  _controller.parent = size;
                                  print(_controller.parent);
                                },
                                child: Row(
                                    children: image
                                        .map((e) =>
                                        SizeProviderWidget(
                                          onChildSize: (size) {
                                            print('size2: ' + size.toString());
                                            _controller.congdon = _controller.congdon + size.width;
                                            lai = size.width;
                                            _controller.conlai.value = _controller.parent.width - _controller.congdon.value;
                                            print(_controller.conlai.value);
                                          },
                                          child: Builder(
                                            builder: (context){
                                              if(_controller.conlai.value > lai){
                                                print('ok');
                                                return Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                                  child: ImageComponent(
                                                    urlImageNetwork: e['urlImage'],
                                                    boxShadow: 0,
                                                  ),
                                                );
                                              } else {
                                                print('no');
                                                return Text('no');
                                              }
                                            },
                                          )
                                        ))
                                        .toList()), //the widget we want the size of,
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
        ));
  }
}
