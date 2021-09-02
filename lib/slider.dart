import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekdicoding/asset.dart';

class ContentSlider extends StatefulWidget {

  final ContentMaterial content;
  ContentSlider({required this.content});
  @override
  _ContentSliderState createState() => _ContentSliderState(content: content);
}

class _ContentSliderState extends State<ContentSlider> {
  int _currentIndex = 0;
  final ContentMaterial content;
  _ContentSliderState({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 550,
            width: 550,
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 600,
                  enlargeCenterPage: true,
                  onPageChanged: (index, content){
                    setState(() {
                      _currentIndex = index;
                    });
                  }
              ),
              items: content.imageList.map((e) => Container(
                child: Container(
                  alignment: Alignment.center,
                  child: ClipRect(
                    child: Image.asset(
                      e,
                      height: 600.0,
                      width: 600.0,
                    ),
                  ),
                ),
              )
                ,).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: content.imageList.map((url) {
              int index = content.imageList.indexOf(url);
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Color.fromRGBO(255, 255, 255, 0.8) : Color.fromRGBO(0, 0, 0, 0.6) ,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
