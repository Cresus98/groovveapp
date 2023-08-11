import 'package:flutter/material.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';

const lightTextTheme = TextTheme(
  bodyMedium: TextStyle(color: AppColor.raisinBlack),
);

const darkTextTheme = TextTheme(
  bodyMedium: TextStyle(color: AppColor.webOrange),
);

final lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColor.webOrange,
  primarySwatch: AppColor.primarySwatch,
  canvasColor: AppColor.raisinBlack,
  fontFamily: FontFamily.poppins,
  brightness: Brightness.light,
  textTheme: lightTextTheme,
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColor.raisinBlack,
  primarySwatch: AppColor.primarySwatch,
  canvasColor: AppColor.raisinBlack,
  fontFamily: FontFamily.poppins,
  brightness: Brightness.dark,
  textTheme: darkTextTheme,
);