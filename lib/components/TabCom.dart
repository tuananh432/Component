import 'package:component/utils/Style.dart';
import 'package:component/widgets/TabComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabController extends GetxController {
  RxInt currentTab = 0.obs;

  setIndexTab(int index) {
    currentTab.value = index;
  }
}

class TabCom extends StatelessWidget {
  TabController _controller = Get.put(TabController());

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
          children: [
            Text('Different object tab'),
            Obx(() => TabComponent(
                  list: [
                    {
                      'title': 'aaa',
                      'function': () => _controller.setIndexTab(0),
                      'currentTab': _controller.currentTab.value
                    },
                    {
                      'title': 'bbb',
                      'function': () => _controller.setIndexTab(1),
                      'currentTab': _controller.currentTab.value
                    },
                    {
                      'title': 'ccc',
                      'function': () => _controller.setIndexTab(2),
                      'currentTab': _controller.currentTab.value
                    }
                  ],
                )),
            SizedBox(height: 20),
            Text('Object context tab'),
            Obx(() => TabComponent(
              isDefaultTab: false,
                  list: [
                    {
                      'title': 'aaa',
                      'function': () => _controller.setIndexTab(0),
                      'currentTab': _controller.currentTab.value
                    },
                    {
                      'title': 'bbb',
                      'function': () => _controller.setIndexTab(1),
                      'currentTab': _controller.currentTab.value
                    },
                    {
                      'title': 'ccc',
                      'function': () => _controller.setIndexTab(2),
                      'currentTab': _controller.currentTab.value
                    }
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
