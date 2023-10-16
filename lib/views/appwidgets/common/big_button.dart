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
  super.key,
});

final VoidCallback onPressed;
final String labelText;

final bool isEnabled;
final bool isBusy;
final double circle;
final double size;

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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(circle),
      ),
      backgroundColor: backgroundColour,
      elevation: 0.0,
    ),
    child: Padding(
      padding:const  EdgeInsets.symmetric(vertical: 0),
      child: Row(
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
                color: foregroundColour,
                fontSize: size
            ),
          ),
        ],
      ),
    ),
  );
}
}