import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HeedSlider extends StatelessWidget {
  final List images;
  const HeedSlider({Key key, @required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: List.generate(images?.length ?? 0,
            (index) => NetworkImage('${images[index].image}')),
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 2.0,
      ),
    );
  }
}
