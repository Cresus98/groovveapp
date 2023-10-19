import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/gen/assets.gen.dart';
import 'package:groovvee/gen/colors.gen.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/appwidgets/common/space.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/auth/auth_text_form_field.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';

class OtpVerification extends ConsumerStatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  static const routeName='opt-verification';
  @override
  ConsumerState<OtpVerification>createState() => _OtpVerificationState();
}

class _OtpVerificationState extends ConsumerState<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return GauzyScaffold(
      content: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: context.screenHeight,
          width: context.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AuthTopBarSecond(title: AppString.OtpVerify),
              Assets.svgsboutons.phoneLock.svg(
                width: context.dx(150),
                height: context.dy(290),
                fit: BoxFit.cover
              ),
               Space.vertical(context.dy(60.0)),
              Align(
                alignment: Alignment.centerRight,
                child: Text(AppString.procedMail,
                  style: context.
                textStyle(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w600,
                  colour: AppColor.raisinBlack
                ),),
              ),
              Space.vertical(context.dy(30.0)),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 00),
                height: context.dy(360),
                width: context.dx(350),
                child: Stack(
                  children: [
                    Container(
                padding:const EdgeInsets.symmetric(horizontal: 30),
                      height: context.dy(320),
                      width: context.dx(350),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 0,
                                color: ColorName.raisinBlack
                            ),
                            BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 0,
                                color: white
                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AuthTextFormFieldSecond(
                            suffixIcon: Icon(Icons.keyboard_arrow_down,),
                            labelText: "(+229) Bénin",
                          ),
                          Space.vertical(context.dy(20)),
                          AuthTextFormFieldSecond(
                            labelText: "Enter your phone number",
                          ),
                          Space.vertical(context.dy(10)),
                          Text("We will send you one time password OTP",
                            style: context.textStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,

                            ),),

                        ],
                      ),
                    ),
                    Positioned(
                      top: context.dy(280),
                        left:115 ,
                        child:
                    Container(
                      height: context.dy(80),
                      width: context.dx(80),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow:  [
                            BoxShadow(
                                color: ColorName.raisinBlack,
                                blurRadius: 20,
                                spreadRadius: 0
                            ),
                            BoxShadow(
                                color: white,
                                blurRadius: 20,
                                spreadRadius: 0
                            ),
                          ],
                          gradient: LinearGradient
                            (
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                              colors: [
                                ColorName.webOrange,
                                ColorName.webOrange2,
                              ]

                          )
                      ),
                      child: const Icon(Icons.arrow_forward_outlined,color: ColorName.raisinBlack,),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
