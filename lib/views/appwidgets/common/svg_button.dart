import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import 'clickable.dart';

class SvgButton extends StatelessWidget {
  const SvgButton({
    required this.onTap,
    required this.asset,
    this.filterColour,
    this.blendMode,
    this.height,
    this.width,
    super.key,
  });

  final GestureTapCallback onTap;
  final BlendMode? blendMode;
  final Color? filterColour;

  final SvgGenImage asset;

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Clickable(
      onClick: onTap,
      child: asset.svg(
        fit: BoxFit.cover,
        colorFilter: filterColour != null
            ? ColorFilter.mode(filterColour!, blendMode ?? BlendMode.srcIn)
            : null,
        height: height,
        width: width,
      ),
    );
  }
}


class SvgButtonBottom extends StatelessWidget {
  const SvgButtonBottom({
  required this.onTap,
  required this.asset,
  this.filterColour,
  this.blendMode,
  this.height,
  this.width,
  super.key,
});

final GestureTapCallback onTap;
final BlendMode? blendMode;
final Color? filterColour;

final SvgGenImage asset;

final double? height;
final double? width;

@override
Widget build(BuildContext context) {
  return Clickable(
    onClick: onTap,
    child: asset.svg(
      fit: BoxFit.cover,
   color: filterColour,
      height: height,
      width: width,
    ),
  );
}
}
