import 'package:flutter/material.dart';

class AppColor{

  AppColor._();

  /// MaterialColor:
  ///   50: #FFFEF4E0
  ///   100: #FFFEE4B3
  ///   200: #FFFDD280
  ///   300: #FFFCC04D
  ///   400: #FFFBB326
  ///   500: #FFFAA500
  ///   600: #FFF99D00
  ///   700: #FFF99300
  ///   800: #FFF88A00
  ///   900: #FFF67900
  static const MaterialColor primarySwatch = MaterialColor(
    0xFFFAA500,
    <int, Color>{
      50: Color(0xFFFEF4E0),
      100: Color(0xFFFEE4B3),
      200: Color(0xFFFDD280),
      300: Color(0xFFFCC04D),
      400: Color(0xFFFBB326),
      500: Color(0xFFFAA500),
      600: Color(0xFFF99D00),
      700: Color(0xFFF99300),
      800: Color(0xFFF88A00),
      900: Color(0xFFF67900),
    },
  );

  /// Color: #252525
  static const Color raisinBlack = Color(0xFF252525);

  /// Color: #79797B
  static const Color sonicSilver = Color(0xFF79797B);

  /// Color: #9A9A9A
  static const Color silverFormField = Color(0xFF9A9A9A);

  /// Color: #FAA500
  static const Color webOrange = Color(0xFFFAA500);

 /// Color : #00BC13
  static const Color webgreen  = Color(0xFF00BC13);

  ///Color : #000000
  static const Color webblack  = Color(0xFF000000);

  ///Color : #FFFFFF
  static const Color webwhite  = Color(0xFFFFFFFF);

  ///#FFD600

  static const Color webYellow = Color(0xFFFFD600);

  ///Transparent Color
  static const  Color tranparent=Colors.transparent;

/// White color
  static const Color white = Color(0xffffffff);

  ///
  static const Color grey = Color(0xFFafb1b5);


  static Color greyOpac =const  Color(0xFFafb1b5).withOpacity(0.4);
}