import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlideShowComponent extends StatelessWidget {
  List<String> imgList;

  SlideShowComponent({this.imgList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Container(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Stack(
                            children: <Widget>[
                              Image.network(item,
                                  fit: BoxFit.cover, width: 1000.0)
                            ],
                          )),
                    ),
                  ))
              .toList()),
    );
  }
}
