

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';

import '../../../constantes.dart';

class AuthQuestionBar extends StatelessWidget {
  const AuthQuestionBar({
  required this.question,
  required this.action,
  required this.onTap,
  super.key,
});

final GestureTapCallback onTap;

final String question;
final String action;

@override
Widget build(BuildContext context) {
  return Center(
    child: RichText(
      text: TextSpan(
        style: context.textStyle(fontWeight: FontWeight.bold, colour: white),
        children: [
          TextSpan(text: '$question ',),
          TextSpan(
            recognizer:
            TapGestureRecognizer()..onTap = onTap,
            text: action,
            style:  context.textStyle(
                fontWeight: FontWeight.bold, colour: context.isInDarkMode? AppColor.webOrange: AppColor.raisinBlack),
          ),
        ],
      ),
    ),
  );
}
}



