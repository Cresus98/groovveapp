import 'package:flutter/material.dart';
import 'package:groovvee/gen/colors.gen.dart';
import 'package:groovvee/views/core/extensions.dart';

import '../../../appwidgets/common/clickable.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({Key? key,required this.title, this.style}) : super(key: key);

  final String title;
  final TextStyle ?style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dy(60),
      width: context.screenWidth,
      child: Row(
        children: [
          Clickable(
            onClick: (){}, child: Icon(Icons.arrow_back,color: ColorName.raisinBlack,),

          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(title,style: style ?? context.textStyle(colour: ColorName.raisinBlack),),
            ),
          )
        ],
      ),
    );
  }
}
