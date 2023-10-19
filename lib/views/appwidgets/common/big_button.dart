import 'package:flutter/material.dart';
import 'package:groovvee/gen/colors.gen.dart';
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
  this.color,
  this.textStyle,
  this.fixedSized,
  this.borderSide=false,
  this.isWidgetNext=false,
  this.isWidgetPrevious=false,
  this.widgetNext=const SizedBox(),
  this.widgetPrevious=const SizedBox(),
  super.key,
});


final VoidCallback onPressed;
final String labelText;

final bool isEnabled;
final bool isBusy;
final double circle;
final bool isWidgetNext;
final bool isWidgetPrevious;
final Widget widgetNext;
final Widget widgetPrevious;
final double size;
final Size ? fixedSized;
final bool? borderSide;
final Color ? color;
final TextStyle ? textStyle;

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
      shape:!borderSide!?
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(circle),
        side: BorderSide.none
      ):
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(circle),
        side: const BorderSide(color: ColorName.raisinBlack,width: 1),
      ),
      backgroundColor:color?? backgroundColour,
      elevation: 0.0,
    ),
    child: Padding(
      padding:const  EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(isBusy)
            LoadingGif(
              colours: [foregroundColour],
              height: context.dy(20.0),
              width: context.dx(64.0),
            ),

          if(!isBusy && isWidgetPrevious)
            widgetPrevious,
          if(!isBusy)
            Text(
              labelText,
              style: textStyle??
                  AppTextStyles.textstyles_simple.
                  copyWith(
                      fontWeight: FontWeight.bold,
                      color: foregroundColour,
                      fontSize: size
                  ),

            ),
          if(!isBusy && isWidgetNext)
            widgetNext,

             // isBusy
          //     ? LoadingGif(
          //   colours: [foregroundColour],
          //   height: context.dy(20.0),
          //   width: context.dx(64.0),
          // )
          //     :
          //
          // Text(
          //   labelText,
          //   style: textStyle??
          //       AppTextStyles.textstyles_simple.
          //   copyWith(
          //       fontWeight: FontWeight.bold,
          //       color: foregroundColour,
          //       fontSize: size
          //   ),
          //
          // ),

        ],
      ),
    ),
  );
}
}
