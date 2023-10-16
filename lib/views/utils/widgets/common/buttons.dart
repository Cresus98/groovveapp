// import 'package:flutter/material.dart';
// import 'package:groovvee/gen/assets.gen.dart';
// import 'package:groovvee/views/core/extensions.dart';
// import 'package:groovvee/views/utils/app_color.dart';
// import 'package:groovvee/views/utils/app_widget.dart';
// import 'package:groovvee/views/utils/appwidgets/app_textstyles.dart';
//
//
// class Clickable extends StatelessWidget {
//   const Clickable({
//   this.splashColor = AppColor.tranparent,
//   this.highlightColor = AppColor.tranparent,
//   required this.onClick,
//   required this.child,
//   super.key,
// });
//
// final GestureTapCallback onClick;
//
// final Color highlightColor;
// final Color splashColor;
//
// final Widget child;
//
// @override
// Widget build(BuildContext context) {
//   return InkWell(
//     highlightColor: highlightColor,
//     splashColor: splashColor,
//     onTap: onClick,
//     child: child,
//   );
// }
// }
//
//
//
//
//
//
// class SvgButton extends StatelessWidget {
//   const SvgButton({
//   required this.onTap,
//   required this.asset,
//   this.filterColour,
//   this.blendMode,
//   this.height,
//   this.width,
//   super.key,
// });
//
// final GestureTapCallback onTap;
// final BlendMode? blendMode;
// final Color? filterColour;
//
// final SvgGenImage asset;
//
// final double? height;
// final double? width;
//
// @override
// Widget build(BuildContext context) {
//   return Clickable(
//     onClick: onTap,
//     child: asset.svg(
//       fit: BoxFit.cover,
//        colorFilter: filterColour != null
//            ? ColorFilter.mode(filterColour!, blendMode ?? BlendMode.srcIn)
//           : null,
//       height: height,
//       width: width,
//     ),
//   );
// }
// }
//
//
//
// class SvgButtonBottom extends StatelessWidget {
//   const SvgButtonBottom({
//   required this.onTap,
//   required this.asset,
//   this.filterColour,
//   this.blendMode,
//   this.height,
//   this.width,
//   super.key,
// });
//
// final GestureTapCallback onTap;
// final BlendMode? blendMode;
// final Color? filterColour;
//
// final SvgGenImage asset;
//
// final double? height;
// final double? width;
//
// @override
// Widget build(BuildContext context) {
//   return Clickable(
//     onClick: onTap,
//     child: asset.svg(
//       fit: BoxFit.cover,
//    color: filterColour,
//       height: height,
//       width: width,
//     ),
//   );
// }
// }
//
//
//
//
//
//
//
//
//
//
//
// /*
// class LoadingGif extends StatelessWidget {
//   const LoadingGif({
//   this.colours = const [white],
//   this.effect = Indicator.ballPulse,
//   this.height = 28.0,
//   this.width = 128.0,
//   super.key,
// });
//
// final List<Color> colours;
//  final Indicator effect;
// final double height;
// final double width;
//
// @override
// Widget build(BuildContext context) {
//   return SizedBox(
//     width: width,
//     height: height,
//     child:
//     LoadingIndicator(indicatorType: effect, colors: colours),
//   );
// }
// }
// */
//
//
//
// class BigButton extends StatelessWidget {
//   const BigButton({
//   required this.labelText,
//   required this.onPressed,
//   this.isEnabled = true,
//   this.isBusy = false,
//   this.circle=8,
//   this.size=16.0,
//   super.key,
// });
//
// final VoidCallback onPressed;
// final String labelText;
//
// final bool isEnabled;
// final bool isBusy;
// final double circle;
// final double size;
//
// @override
// Widget build(BuildContext context) {
//
//   final foregroundColour =
//   context.isInDarkMode ?
//   AppColor.raisinBlack :
//   AppColor.white;
//
//   final backgroundColour =
//   context.isInDarkMode ? AppColor.webOrange :
//   AppColor.raisinBlack;
//
//   return ElevatedButton(
//     onPressed: (isEnabled && !isBusy) ? onPressed : () {},
//     style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(circle),
//       ),
//       backgroundColor: backgroundColour,
//       elevation: 0.0,
//     ),
//     child: Padding(
//       padding:const  EdgeInsets.symmetric(vertical: 0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           isBusy
//               ? LoadingGif(
//             colours: [foregroundColour],
//             height: context.dy(20.0),
//             width: context.dx(64.0),
//           )
//               :
//           Text(
//             labelText,
//             style: AppTextStyles.textstyles_simple.
//             copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: foregroundColour,
//                 fontSize: size
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
// }
//
//
//
//
