import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groovvee/controller/theme_manage.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/fonctions.dart';


class GauzyScaffold extends ConsumerWidget {
  const GauzyScaffold({
  this.floatingActionButtonLocation,
  this.floatingActionButton,
  this.bottomNavigationBar,
  this.shouldExtendBody,
  this.overlayStyle,
  this.shouldResize,
  this.bottomSheet,
  this.content,
  super.key,
});

final FloatingActionButtonLocation? floatingActionButtonLocation;
final SystemUiOverlayStyle? overlayStyle;
final Widget? floatingActionButton;
final Widget? bottomNavigationBar;
final Widget? bottomSheet;
final Widget? content;

final bool? shouldExtendBody;
final bool? shouldResize;

@override
Widget build(BuildContext context,WidgetRef ref) {
  return
    /*
    AnnotatedRegion(
    value: overlayStyle ?? context.defaultSystemUiOverlayStyle,
    child: Scaffold(
      bottomSheet: bottomSheet,
      backgroundColor:
      context.isInDarkMode ? ColorName.raisinBlack : ColorName.webOrange,
      floatingActionButtonLocation: floatingActionButtonLocation,
      resizeToAvoidBottomInset: shouldResize ?? false,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: shouldExtendBody ?? false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          (context.isInDarkMode
              ? Assets.graphics.wireGauzeDark
              : Assets.graphics.wireGauze)
              .svg(
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          if (content != null) content!,
        ],
      ),
    ),
  )
 */
    Scaffold(
      bottomSheet: bottomSheet,
      backgroundColor:
      context.isInDarkMode ?
      AppColor.raisinBlack
          : AppColor.webOrange,
      floatingActionButtonLocation: floatingActionButtonLocation,
      resizeToAvoidBottomInset: shouldResize ?? false,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: shouldExtendBody ?? false,
      body:
      Stack(
        alignment: Alignment.topCenter,
        children: [
          (context.isInDarkMode
              ? AppAssetsImages.wireGauzeDark
              : AppAssetsImages.wireGauze)
              .svg(
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          if (content != null) content!,
        ],
      ),

    )
  ;
}
}



/*
class GauzyScaffold extends StatelessWidget {
  const GauzyScaffold({
  this.floatingActionButtonLocation,
  this.floatingActionButton,
  this.bottomNavigationBar,
  this.shouldExtendBody,
  this.overlayStyle,
  this.shouldResize,
  this.bottomSheet,
  this.content,
  super.key,
});

final FloatingActionButtonLocation? floatingActionButtonLocation;
final SystemUiOverlayStyle? overlayStyle;
final Widget? floatingActionButton;
final Widget? bottomNavigationBar;
final Widget? bottomSheet;
final Widget? content;

final bool? shouldExtendBody;
final bool? shouldResize;

@override
Widget build(BuildContext context) {
  return
    /*
    AnnotatedRegion(
    value: overlayStyle ?? context.defaultSystemUiOverlayStyle,
    child: Scaffold(
      bottomSheet: bottomSheet,
      backgroundColor:
      context.isInDarkMode ? ColorName.raisinBlack : ColorName.webOrange,
      floatingActionButtonLocation: floatingActionButtonLocation,
      resizeToAvoidBottomInset: shouldResize ?? false,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: shouldExtendBody ?? false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          (context.isInDarkMode
              ? Assets.graphics.wireGauzeDark
              : Assets.graphics.wireGauze)
              .svg(
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          if (content != null) content!,
        ],
      ),
    ),
  )
 */
    Scaffold(
      bottomSheet: bottomSheet,
      backgroundColor:
      //context.isInDarkMode ?
      AppColor.raisinBlack,
      //     : AppColor.webOrange,
      floatingActionButtonLocation: floatingActionButtonLocation,
      resizeToAvoidBottomInset: shouldResize ?? false,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: shouldExtendBody ?? false,
      body:

      Stack(
        alignment: Alignment.topCenter,
        children: [
          AppAssetsImages.wireGauze.
          svg(
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover
          ),

          // (context.isInDarkMode
          //     ? Assets.wireGauzeDark
          //     : Assets.graphics.wireGauze)
          //     .svg(
          //   height: double.maxFinite,
          //   width: double.maxFinite,
          //   fit: BoxFit.cover,
          // ),
          if (content != null) content!,
        ],
      ),

    )
  ;
}
}
*/