import 'package:component/utils/Style.dart';
import 'package:component/widgets/ImageComponent.dart';
import 'package:component/widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<String> listImage = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class FileUploadController extends GetxController {
  Size parent = Size.zero;
  RxDouble conlai = 0.0.obs;
  RxDouble congdon = 100.0.obs;
  RxInt num = 1.obs;
}

class FileUploadCom extends StatelessWidget {
  double lai = 0;
  int t = 2;
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
          builder: (_controller) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 500,
                  decoration: BoxDecoration(color: Colors.black.withOpacity(0.04), borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SizeProviderWidget(
                        onChildSize: (size) {
                          print(size);
                          _controller.parent = size;
                          _controller.conlai.value = _controller.parent.width;
                          print(_controller.parent);
                        },
                        child: Row(
                          children: [
                            Row(
                                children: listImage
                                    .map((e) => SizeProviderWidget(
                                    onChildSize: (size) {
                                      print('size2: ' + size.toString());
                                      t = (_controller.parent.width ~/ size.width).toInt();
                                      print(t);
                                      _controller.update();
                                    },
                                    child:  listImage.indexOf(e) < t-1 ? Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: ImageComponent(
                                        urlImageNetwork: e,
                                        boxShadow: 0,
                                      ),
                                    ) : Container()))
                                    .toList()),
                            Container(
                              color: Colors.white,
                              child: Text((listImage.length - (t-1)).toString()),
                            )

                          ],
                        ), //the widget we want the size of,
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
