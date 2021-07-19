import 'package:component/utils/Style.dart';
import 'package:flutter/material.dart';
/*
* Example call TabComponent
* TabComponent(
     isDefaultTab: true,
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
   )
* */
class TabComponent extends StatelessWidget {
  List<Map<String, dynamic>> list;
  bool isDefaultTab;

  TabComponent({this.list, this.isDefaultTab = true});

  @override
  Widget build(BuildContext context) {
    return isDefaultTab
        ? Container(
            height: 38,
            margin: EdgeInsets.only(top: 5, left: 15, right: 15),
            decoration: BoxDecoration(
                color: Color.fromRGBO(194, 194, 194, 0.2),
                borderRadius: BorderRadius.circular(3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: list
                  .map((e) => Expanded(
                        child: InkWell(
                          onTap: e['function'],
                          child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: e['currentTab'] == list.indexOf(e)
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Text(e['title'],
                                  style: TextStyle(
                                      color: e['currentTab'] == list.indexOf(e)
                                          ? PRIMARY_COLOR
                                          : Colors.black))),
                        ),
                      ))
                  .toList(),
            ),
          )
        : Container(
            height: 45,
            margin: EdgeInsets.only(top: 5, left: 15, right: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: list
                  .map((e) => Expanded(
                        child: InkWell(
                          onTap: e['function'],
                          child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: e['currentTab'] == list.indexOf(e)
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Column(
                                children: [
                                  Text(e['title'],
                                      style: TextStyle(
                                          color:
                                              e['currentTab'] == list.indexOf(e)
                                                  ? PRIMARY_COLOR
                                                  : Colors.black)),
                                  e['currentTab'] == list.indexOf(e)
                                      ? Divider(
                                          thickness: 3,
                                          color:
                                              e['currentTab'] == list.indexOf(e)
                                                  ? PRIMARY_COLOR
                                                  : Colors.black)
                                      : Container()
                                ],
                              )),
                        ),
                      ))
                  .toList(),
            ),
          );
  }
}
