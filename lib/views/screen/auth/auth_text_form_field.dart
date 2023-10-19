import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';

import '../../../constantes.dart';
import '../../../controller/initialise.dart';



class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
  this.onEditingComplete,
  this.shouldObscureText,
  this.textInputAction,
  this.initialValue,
  this.keyboardType,
  this.maxLength,
  this.focusNode,
  this.isEnabled,
  this.readOnly,
  this.validator,
  this.labelText,
  this.suffixIcon,
  this.preffixIcon,
  super.key,
});

final FormFieldValidator<String>? validator;
final VoidCallback? onEditingComplete;

final TextInputAction? textInputAction;
final TextInputType? keyboardType;
final FocusNode? focusNode;
final String? initialValue;
final String? labelText;

final bool? shouldObscureText;
final bool? isEnabled;
final int? maxLength;
final bool? readOnly;
final Widget? suffixIcon;
final Widget? preffixIcon;

@override
Widget build(BuildContext context) {
  final textColour =
  context.isInDarkMode ?
  AppColor.webOrange : AppColor.webblacktextfield;

  final focusedBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: textColour, width: 2.0),
  );

  final normalBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: textColour, width: 1.0),
  );

  final errorBorder = const UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 1.0),
  );

  return TextFormField(
    style: context.textStyle(fontWeight: FontWeight.bold),
    onEditingComplete: onEditingComplete,
    textInputAction: textInputAction,
    readOnly: readOnly??false,
    decoration: InputDecoration(
      counter: const SizedBox.shrink(),
      errorStyle: context.textStyle(height: 0.0),
      labelStyle: context.textStyle(fontWeight: FontWeight.w500),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedErrorBorder: focusedBorder,
      focusedBorder: focusedBorder,
      enabledBorder: normalBorder,
      errorBorder: errorBorder,
      labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: preffixIcon
    ),
    enabled: isEnabled ?? true,
    obscureText: shouldObscureText ?? false,
    keyboardType: keyboardType,
    initialValue: initialValue,
    cursorColor: textColour,
    focusNode: focusNode,
    maxLength: maxLength,
    validator: validator,
  );
}
}



class AuthTextFormFieldSecond extends StatelessWidget {
  const AuthTextFormFieldSecond({
  this.onEditingComplete,
  this.shouldObscureText,
  this.textInputAction,
  this.initialValue,
  this.keyboardType,
  this.maxLength,
  this.focusNode,
  this.isEnabled,
  this.readOnly,
  this.validator,
  this.labelText,
  this.suffixIcon,
  this.preffixIcon,
  super.key,
});

final FormFieldValidator<String>? validator;
final VoidCallback? onEditingComplete;

final TextInputAction? textInputAction;
final TextInputType? keyboardType;
final FocusNode? focusNode;
final String? initialValue;
final String? labelText;

final bool? shouldObscureText;
final bool? isEnabled;
final int? maxLength;
final bool? readOnly;
final Widget? suffixIcon;
final Widget? preffixIcon;

@override
Widget build(BuildContext context) {
  final textColour =
  context.isInDarkMode ?
  AppColor.webOrange : AppColor.webblacktextfield;

  final focusedBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: textColour, width: 2.0),
  );

  final normalBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: textColour, width: 1.0),
  );

  final errorBorder = const UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 1.0),
  );

  return TextFormField(
    style: context.textStyle(fontWeight: FontWeight.bold),
    onEditingComplete: onEditingComplete,
    textInputAction: textInputAction,
    readOnly: readOnly??false,
    decoration: InputDecoration(
        counter: const SizedBox.shrink(),
        errorStyle: context.textStyle(height: 0.0),
        labelStyle: context.textStyle(fontWeight: FontWeight.w500),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        focusedErrorBorder: focusedBorder,
        focusedBorder: focusedBorder,
        enabledBorder: normalBorder,
        errorBorder: errorBorder,
        labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: preffixIcon
    ),
    enabled: isEnabled ?? true,
    obscureText: shouldObscureText ?? false,
    keyboardType: keyboardType,
    initialValue: initialValue,
    cursorColor: textColour,
    focusNode: focusNode,
    maxLength: maxLength,
    validator: validator,
  );
}
}