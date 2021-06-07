import 'dart:math';

import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  RotationAnimation({Key key}) : super(key: key);

  @override
  _RotationAnimationState createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> {
  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Transform.scale(
            //   scale: value * 2,
            //   child: Container(
            //     width: 100,
            //     height: 200,
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //     ),
            //   ),
            // ),

            // Transform.translate(
            //
            //   offset: Offset(value * 90,value * 100), // x truc ngang y truc dung
            //   child: Container(
            //     width: 100,
            //     height: 200,
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //     ),
            //   ),
            // ),


            // Transform.rotate(
            //   angle: value * 10,
            //   child: Container(
            //     width: 100,
            //     height: 200,
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //     ),
            //   ),
            // ),

            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..rotateY(pi * value)..setEntry(3, 2, 0.001),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Slider(value: value, onChanged: (val){
              setState(() {
                value = val;
                print(pi * value);
              });
            }),
          ],
        ),
      ),
    );
  }
}