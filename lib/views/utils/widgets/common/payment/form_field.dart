import 'package:flutter/material.dart';

import '../../../../../gen/colors.gen.dart';
class FormFieldPayment extends StatelessWidget {
  const FormFieldPayment({Key? key,this.filled,this.fillColor}) : super(key: key);

  final bool ?filled;
  final Color ? fillColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
      InputDecoration(
          filled: filled,
          fillColor: fillColor ?? ColorName.raisinBlack,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          )
      ),
    );
  }
}
