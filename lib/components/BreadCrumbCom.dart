import 'package:component/utils/Style.dart';
import 'package:component/widgets/ButtonComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:get/get.dart';

const List listTitle = [
  {'title': 'item111111111111111111111111'},
  {'title': 'item2'},
  {'title': 'item3'},
  {'title': 'item4'},
  {'title': 'item5'},
  {'title': 'item6'},
];

class BreadcrumbController extends GetxController {
  RxInt currentTab = 1.obs;
}

class BreadcrumbCom extends StatelessWidget {
  List<Map<String, dynamic>> list;
  int currentTab;
  Function functionUpdate;
  double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Back'),
          leading: GestureDetector(onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
        ),
        body: GetBuilder<BreadcrumbController>(
          init: BreadcrumbController(),
          builder: (_controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: BreadCrumb(
                  items: listTitle
                      .map((e) => listTitle.indexOf(e) < _controller.currentTab.value
                          ? BreadCrumbItem(
                              content: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                    child: Container(
                                        constraints: BoxConstraints(maxWidth: 100, minWidth: 30),
                                        child: Text(e['title'], style: TextStyle(fontSize: 18), overflow: TextOverflow.ellipsis, maxLines: 1)),
                                  ),
                                  _controller.currentTab.value > listTitle.indexOf(e) + 1 ? Icon(Icons.chevron_right) : Container()
                                ],
                              ),
                              onTap: () {
                                _controller.currentTab.value = listTitle.indexOf(e) + 1;
                                _controller.update();
                              })
                          : BreadCrumbItem(
                              content: Container(),
                            ))
                      .toList(),
                  divider: Container(),
                  overflow: ScrollableOverflow(
                    keepLastDivider: false,
                    reverse: false,
                    direction: Axis.horizontal,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_controller.currentTab.value.toString(), style: TextStyle(fontSize: 28)),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonComponent(
                    title: 'Next page',
                    onPressed: () {
                      _controller.currentTab.value++;
                      _controller.update();
                    },
                    backgroundColor: Colors.black.withOpacity(0.05),
                  ),
                  SizedBox(height: 10),
                  ButtonComponent(
                    title: 'Previous page',
                    onPressed: () {
                      _controller.currentTab.value--;
                      _controller.update();
                    },
                    backgroundColor: Colors.black.withOpacity(0.05),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
