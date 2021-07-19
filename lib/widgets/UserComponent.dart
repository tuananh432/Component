import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  String userName;
  String urlImage;
  String type;

  UserComponent({this.userName, this.urlImage, this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage(urlImage != null ? urlImage : 'https://lucloi.vn/wp-content/uploads/2020/03/90230919_1475991735902698_2617880264533082112_n.jpg'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3),
              child: Text(userName != null ? userName : ''),
            ),
            Text(
              type != null ? type : '',
              style: TextStyle(color: Color.fromRGBO(112, 112, 112, 1)),
            )
          ],
        )
      ],
    );
  }
}
