import 'package:flutter/material.dart';
import 'package:groovvee/views/appwidgets/common/loading_gif.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';


// class BigButton extends StatelessWidget {
//   const BigButton({
//     required this.labelText,
//     required this.onPressed,
//     this.isEnabled = true,
//     this.isBusy = false,
//     super.key,
//   });
//
//   final VoidCallback onPressed;
//   final String labelText;
//
//   final bool isEnabled;
//   final bool isBusy;
//
//   @override
//   Widget build(BuildContext context) {
//     final foregroundColour = context.isInDarkMode ? AppColor.raisinBlack : AppColor.white;
//
//     final backgroundColour = context.isInDarkMode ? AppColor.webOrange : AppColor.raisinBlack;
//
//     return ElevatedButton(
//       onPressed: (isEnabled && !isBusy) ? onPressed: (){},
//       style: ElevatedButton.styleFrom(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(context.dx(8.0)),
//         ),
//         backgroundColor: backgroundColour,
//         elevation: 0.0,
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: context.dy(16.0)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             isBusy
//                 ? LoadingGif(
//                     colours: [foregroundColour],
//                     height: context.dy(20.0),
//                     width: context.dx(64.0),
//                   )
//                 : Text(
//                     labelText,
//                     style: context.textStyle(
//                       fontWeight: FontWeight.bold,
//                       colour: foregroundColour,
//                       fontSize: 16.0,
//                     ),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }




class BigButton extends StatelessWidget {
  const BigButton({
  required this.labelText,
  required this.onPressed,
  this.isEnabled = true,
  this.isBusy = false,
  this.circle=8,
  this.size=16.0,
  this.color=Colors.white,
  this.fixedSized,
  this.textStyle,
  this.isWidgetNext=false,
  this.widgetNext,
  this.widgetPrevious,
  this.isWidgetPrevious=false,
  this.borderSide=false,
  this.textColor,this.backgroundClr,
  super.key,

});

final VoidCallback onPressed;
final String labelText;

final bool isEnabled;
final bool isBusy;
final double circle;
final double size;
final Color color;
final Color ?backgroundClr;
final Color? textColor;
final Size ? fixedSized;
final bool borderSide;
final bool  isWidgetNext;
final bool  isWidgetPrevious;
final TextStyle ? textStyle;
final Widget ? widgetNext;
final Widget ? widgetPrevious;


@override
Widget build(BuildContext context) {

  final foregroundColour =
  context.isInDarkMode ?
  AppColor.raisinBlack :
  AppColor.white;

  final backgroundColour =
  context.isInDarkMode ? AppColor.webOrange :
  AppColor.raisinBlack;

  return ElevatedButton(
    onPressed: (isEnabled && !isBusy) ? onPressed : () {},
    style: ElevatedButton.styleFrom(
      fixedSize: fixedSized,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(circle),
      ),
      backgroundColor: backgroundClr?? backgroundColour,
      elevation: 0.0,
    ),
    child: Padding(
      padding:const  EdgeInsets.symmetric(vertical: 0),
      child: isBusy?Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isBusy
              ? LoadingGif(
            colours: [foregroundColour],
            height: context.dy(20.0),
            width: context.dx(64.0),
          )
              :
          Text(
            labelText,
            style: AppTextStyles.textstyles_simple.
            copyWith(
                fontWeight: FontWeight.bold,
                color: textColor?? foregroundColour,
                fontSize: size
            ),
          ),
        ],
      ):
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          if(isWidgetPrevious)
            widgetPrevious!,
          Text(
            labelText,
            style: AppTextStyles.textstyles_simple.
            copyWith(
                fontWeight: FontWeight.bold,
                color: color,
                fontSize: size
            ),
          ),
          if(isWidgetNext)
            widgetNext!,
        ],
      ),
    ),
  );
}
}