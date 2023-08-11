import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';

class AppTextStyles{
   AppTextStyles._();


   static TextStyle textstyles_simple=TextStyle(
      fontFamily: AssetsGoogleFonts.poppinsBlack,
      fontSize: 13
   );


}

class AppTextFieldStyles{
   AppTextFieldStyles._();


   static InputDecoration text_form_field_decoration = const InputDecoration(
      filled: true,
      fillColor: AppColor.white,
      border:   OutlineInputBorder(
          borderSide: BorderSide(
             color: AppColor.silverFormField,
             width: 1,
          ),
          borderRadius:  BorderRadius.all(Radius.circular(10.0))),
      focusedBorder:   OutlineInputBorder(
          borderSide: BorderSide(
             color:AppColor.silverFormField,
             width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
             color: AppColor.silverFormField,
             width: 1.5,
          ),
          borderRadius:  BorderRadius.all(Radius.circular(12.0))),

   );



}