import 'package:flutter/material.dart';

import 'animation/rotation_animation.dart';

class ListAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildButton("Tranform", () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>RotationAnimation())); })
          ],
        ),
      ),
    );
  }
}
buildButton(String title,VoidCallback ontap){
  return FlatButton(onPressed: ontap, child: Text(title));
}
