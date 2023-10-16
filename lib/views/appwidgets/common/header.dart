import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/views/core/extensions.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

import 'svg_button.dart';

class Header extends StatelessWidget {
  const Header({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        if (context.canPop())
          SvgButton(
            onTap: context.pop,
            asset: Assets.graphics.backArrow,
            filterColour: !context.isInDarkMode
                ? ColorName.raisinBlack
                : ColorName.webOrange,
            height: context.dx(40.0),
            width: context.dx(40.0),
          ),
        Center(
          child: Text(
            title,
            style: context.textStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
