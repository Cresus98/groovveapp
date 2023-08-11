import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..addOval(
          Rect.fromLTWH(
              0,
              0,
              size.width,
              size.height)
      )


    // ..moveTo(0, size.height*.15)
    //..quadraticBezierTo(
    //  size.width/2,0,
    // size.width,size.height*.15
    //)
    // ..addArc(
    //      Rect.fromLTWH(
    //         0,
    //         0,
    //         size.width,
    //         size.height)
    //     , 0, 45)

    // ..lineTo(size.width,0)
    //..lineTo(size.width,size.height/2)
    //..lineTo(size.width/2,size.height)
    //..lineTo(0,size.height)

      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
    //throw UnimplementedError();
  }
}