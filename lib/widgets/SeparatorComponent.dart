import 'package:component/utils/Style.dart';
import 'package:flutter/material.dart';

class SepatatorComponent extends StatelessWidget {
  String text;
  int num;
  bool haveTextHyperLink;

  SepatatorComponent({this.text, this.num, this.haveTextHyperLink = true});

  @override
  Widget build(BuildContext context) {
    return haveTextHyperLink
        ? Container(
            height: 35,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(3)),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(text != null ? text : 'Bình luận'),
                    SizedBox(width: 10),
                    num != null
                        ? Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromRGBO(112, 112, 112, 0.15)),
                            child: Text(
                             num < 99 ? num.toString() : '99+',
                              style: TextStyle(color: PRIMARY_COLOR),
                            ),
                          )
                        : Container()
                  ],
                ),
                Text(
                  'Xem toàn bộ',
                  style: TextStyle(
                      color: PRIMARY_COLOR, fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        : Container(
            height: 35,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(3)),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text != null ? text : 'Các công việc liên quan'),
              ],
            ),
          );
  }
}
