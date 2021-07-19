import 'package:component/utils/Style.dart';
import 'package:component/widgets/ImageComponent.dart';
import 'package:expandable/expandable.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class CommentComponent extends StatelessWidget {
  GlobalKey _globalKey = GlobalKey();
  double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://d7oq74ajcvfe9bgg29zdwi6j-wpengine.netdna-ssl.com/wp-content/uploads/2020/04/word-image-796.jpeg'),
                  radius: 25,
                ),
              ],
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                children: [
                  Container(
                    key: _globalKey,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(194, 194, 194, 0.1),
                        borderRadius: BorderRadius.circular(3)),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nguyễn Quốc Tân',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        SizedBox(height: 15),
                        ExpandableText(
                          'Đây là comment của mọi người Đây là comment của mọi người Đây là comment của mọi người Đây là comment của mọi người Đây là comment của mọi ngườiĐây là comment của mọi người Đây là comment của mọi người Đây là comment của mọi người',
                          expandText: 'Xem thêm',
                          collapseText: 'Thu gọn',
                          maxLines: 4,
                          linkColor: PRIMARY_COLOR,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              ImageComponent(
                                urlImageNetwork:
                                    'https://d7oq74ajcvfe9bgg29zdwi6j-wpengine.netdna-ssl.com/wp-content/uploads/2020/04/word-image-796.jpeg',
                                height: 50,
                                width: 50,
                                backgroundColor:
                                    Color.fromRGBO(194, 194, 194, 0.1),
                                boxShadow: 0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text('+10',
                                    style: TextStyle(
                                        color: PRIMARY_COLOR, fontSize: 16)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text('flie đính kèm số 1.xlsx',
                              style: TextStyle(
                                  decoration: TextDecoration.underline)),
                        ),
                        Text('+12 file đính kèm',
                            style: TextStyle(color: PRIMARY_COLOR)),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  ExpandableNotifier(
                      child: ScrollOnExpand(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Builder(
                              builder: (context) {
                                var expandableController =
                                    ExpandableController.of(context,
                                        required: true);
                                return Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text('10m',
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.4))),
                                    SizedBox(width: 15),
                                    GestureDetector(
                                        onTap: () =>
                                            expandableController.toggle(),
                                        child: Text('Trả lời',
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.6)))),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                        Expandable(
                          collapsed: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://d7oq74ajcvfe9bgg29zdwi6j-wpengine.netdna-ssl.com/wp-content/uploads/2020/04/word-image-796.jpeg'),
                                        radius: 12,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Nguyễn Quốc Tân',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(width: 10),
                                      Text('Đã trả lời',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6))),
                                      SizedBox(width: 5),
                                      Text('•',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6))),
                                      SizedBox(width: 5),
                                      Text('10 trả lời',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)))
                                    ],
                                  ),
                                ),
                              ]),
                          expanded: Column(
                            children: [
                              ReplyComment(),
                              ReplyComment(),
                              ReplyComment(),
                              ReplyComment(),
                              ReplyComment(),
                              ReplyComment(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReplyComment extends StatelessWidget {
  String comment;

  ReplyComment({this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://d7oq74ajcvfe9bgg29zdwi6j-wpengine.netdna-ssl.com/wp-content/uploads/2020/04/word-image-796.jpeg'),
                radius: 18,
              ),
            ],
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(194, 194, 194, 0.1),
                      borderRadius: BorderRadius.circular(3)),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nguyễn Quốc Tân',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      SizedBox(height: 15),
                      ExpandableText(
                        'Đây là comment của mọi người Đây là comment của mọi người Đây là comment của mọi người Đây là comment của mọi người Đây là comment của mọi người',
                        expandText: 'Xem thêm',
                        collapseText: 'Thu gọn',
                        maxLines: 5,
                        linkColor: PRIMARY_COLOR,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text('10m',
                        style: TextStyle(color: Colors.black.withOpacity(0.4))),
                    SizedBox(width: 15),
                    GestureDetector(
                        onTap: () => print('tra loi'),
                        child: Text('Trả lời',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6)))),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
