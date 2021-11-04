// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

class TaskFirst extends StatefulWidget {
  const TaskFirst({Key? key}) : super(key: key);

  @override
  _TaskFirstState createState() => _TaskFirstState();
}

class _TaskFirstState extends State<TaskFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomeTask 3 point 1",
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min,
                //children: <Widget>[
                //SvgPicture.asset('assets/images/flutter_logo.svg')
                //],
                children: [
              CarouselSlider(
                options: CarouselOptions(height: 400),
                items: ['flutter_logo.svg', 'Skillbox_logo.svg'].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.white),
                        child: SvgPicture.asset(
                          'assets/images/' + i,
                          fit: BoxFit.scaleDown,
                        ),
                      );
                    },
                  );
                }).toList(),
              )
            ])));
  }
}
