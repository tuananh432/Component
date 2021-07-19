import 'dart:io';
import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  bool isImageNetwork;
  String urlImageNetwork;
  File urlImageFile;
  double height;
  double width;
  double borderRadius;
  double boxShadow;
  Color backgroundColor;
  Function onTap;

  ImageComponent(
      {this.isImageNetwork = true,
      this.urlImageNetwork,
      this.urlImageFile,
      this.height = 100,
      this.width = 100,
      this.borderRadius = 15,
      this.boxShadow = 0.5,
      this.backgroundColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: backgroundColor != null ? backgroundColor : Colors.white,
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(boxShadow),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 0) // changes position of shadow
                    )
              ]),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: isImageNetwork
                  ? Image.network(
                      urlImageNetwork != null
                          ? urlImageNetwork
                          : 'https://lucloi.vn/wp-content/uploads/2020/03/90230919_1475991735902698_2617880264533082112_n.jpg',
                      height: height,
                      width: width,
                      errorBuilder: (context, url, error) => Icon(
                          Icons.error_outline_outlined,
                          color: Colors.orange))
                  : Image.file(urlImageFile,
                      height: height,
                      width: width,
                      errorBuilder: (context, url, error) => Icon(
                          Icons.error_outline_outlined,
                          color: Colors.orange)))),
    );
  }
}
