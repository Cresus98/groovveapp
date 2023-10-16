import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:intl/intl.dart';
import 'constants.dart';


extension BuildContextPlus on BuildContext {
  bool get isInDarkMode => theme.brightness == Brightness.dark;

  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

//  AppLocalizations get l10n => AppLocalizations.of(this)!;

  SystemUiOverlayStyle get defaultSystemUiOverlayStyle {
    return SystemUiOverlayStyle(
      systemNavigationBarColor: theme.scaffoldBackgroundColor,
      systemNavigationBarIconBrightness: reverseBrightness,
      statusBarIconBrightness: reverseBrightness,
      statusBarColor: transparent,
    );
  }

  Brightness get reverseBrightness =>
      isInDarkMode ? Brightness.light
          : Brightness.dark;

  FocusScopeNode get currentFocus => FocusScope.of(this);

  ScaffoldState get scaffoldState => Scaffold.of(this);

  ColorScheme get colourScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  ThemeData get theme => Theme.of(this);

  double dy(double value) => screenHeight * value / designHeight;
  double dx(double value) => screenWidth * value / designWidth;

  void unfocus() => currentFocus.unfocus();

  TextStyle textStyle({
    TextDecoration? decoration,
    TextOverflow? overflow,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    String? fontFamily,
    double? fontSize,
    double? height,
    Color? colour,
  }) {
    return textTheme.bodyMedium!.copyWith(
      decoration: decoration,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      overflow: overflow,
      height: height,
      color: colour,
    );
  }
}

extension DurationPlus on Duration {
  Future<bool> get delay => Future.delayed(this, () => true);
  Future<void> schedule(VoidCallback task) => Future.delayed(this, task);

}

extension DateTimePlus on DateTime {
  String get asYyMmDd => '$this'.split(' ').first;
}

extension StringPlus on String {
  bool get isValidEmailAddress =>
      RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+(\.?[a-zA-Z]{1,16})$').hasMatch(this);

  String get capitalized =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : this;

  String get titleCased =>
      split(RegExp(r' +')).map((str) => str.capitalized).join(' ');
}

extension NumberPlus on num {
  String get asMoney => NumberFormat.currency(symbol: '').format(this);
  String get formatted => NumberFormat.decimalPattern().format(this);
}

extension FilePlus on File {
  String get extension => path.contains('.') ? path.split('.').last : '';
  String get name => path.contains('/') ? path.split('/').last : path;
}

extension IntPlus on int {
  String get asLongTimeString => '$seconds'.split('.').first.padLeft(8, '0');
  String get asShortTimeString => asLongTimeString.substring(3);
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get hours => Duration(hours: this);
}
