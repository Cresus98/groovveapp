import 'dart:convert';

import 'package:flutter/material.dart';
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
  this.validator,
  this.labelText,
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

@override
Widget build(BuildContext context) {

  final textColour =

  interne_storage.read(getstorageColor) == null? AppColor.webOrange:
  jsonDecode(interne_storage.read(getstorageColor))==getblackColor?AppColor.webOrange : AppColor.raisinBlack;

  final focusedBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: textColour, width: 2.0),
  );

  final normalBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: textColour, width: 1.0),
  );

  return TextFormField(
    style: AppTextStyles.textstyles_simple.copyWith(fontWeight: FontWeight.bold),
    onEditingComplete: onEditingComplete,
    textInputAction: textInputAction,
    decoration: InputDecoration(
      counter: const SizedBox.shrink(),
      errorStyle: AppTextStyles.textstyles_simple.copyWith(height: 0.0),
      labelStyle:AppTextStyles.textstyles_simple.copyWith(fontWeight: FontWeight.w500),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedErrorBorder: focusedBorder,
      focusedBorder: focusedBorder,
      enabledBorder: normalBorder,
      errorBorder: normalBorder,
      labelText: labelText,
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
