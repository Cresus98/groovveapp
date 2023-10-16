import 'package:flutter/material.dart';
import 'package:groovvee/views/core/extensions.dart';



class Space extends StatelessWidget {
  const Space.horizontal(this.width, {this.height, super.key});

  const Space.vertical(this.height, {this.width, super.key});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height != null ? context.dy(height!) : null,
      width: width != null ? context.dx(width!) : null,
    );
  }
}
