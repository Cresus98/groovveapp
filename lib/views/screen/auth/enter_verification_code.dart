import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:groovvee/gen/assets.gen.dart';
import 'package:groovvee/gen/colors.gen.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/auth/auth_text_form_field.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/appHomeCard.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';

import '../../../constantes.dart';
import '../../appwidgets/common/clickable.dart';
import '../../appwidgets/common/space.dart';


class EnterVerificationCode extends StatefulWidget {
  const EnterVerificationCode({Key? key}) : super(key: key);

  static const routeName="enter-code";
  @override
  _EnterVerificationCodeState createState() => _EnterVerificationCodeState();
}

class _EnterVerificationCodeState extends State<EnterVerificationCode> {
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
           Space.vertical(context.dy(55)),
              AppAssetsImages.logo.svg(
                height: context.dy(150),
                width: context.dx(121)
              ),
              Space.vertical(context.dy(75)),
              SizedBox(
                height: context.dy(110),
                width: context.dx(380),
                child:Stack(
                  children: [
                    Padding(
                      padding:
                    const EdgeInsets.only(left: 15,right: 15,top: 10),
                      child:
                      Assets.svgsboutons.vector.svg(
                        height: context.dy(100),
                        width: context.dx(380),

                      ),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25,
                      right: 25,
                      top: 25
                    ),
                    child: RichText(
                        text:
                    TextSpan(
                      text: "Hey ",
                      style: context.textStyle(
                        colour: ColorName.raisinBlack,
                        fontWeight:FontWeight.w400,
                        fontSize: 11,
                      ),
                      children: [
                        TextSpan(
                          text: "Charlotte ",
                            style: context.textStyle(
                                colour: ColorName.raisinBlack,
                                fontWeight:FontWeight.w600,
                                fontSize: 13,
                            )
                        ),
                        TextSpan(
                          text: ",by using this App you agree to the terms and conditions of ",
                            style: context.textStyle(
                                colour: ColorName.raisinBlack,
                                fontWeight:FontWeight.w400,
                                fontSize: 11,
                            )
                        ),
                        TextSpan(
                          text: "GrooVVee Media/ Black Bumble LLC",
                          style: context.textStyle(
                            colour: ColorName.raisinBlack,
                            fontWeight:FontWeight.w600,
                            fontSize: 13,
                            decoration: TextDecoration.underline
                          )
                        ),
                      ]
                    ),
                    textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text("Welcome to the familly",
                    style: context.textStyle(
                      colour: ColorName.raisinBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 13
                    ),),
                  ),

                  ],
                ),
              ),
              Expanded(child:
              StepTwo(start: AppString.some,
                  middle:AppString.blog,
                  end: AppString.categ_interrest,
                  data: Icons.wysiwyg)
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 35,right: 35),
                width: context.screenWidth,
                height: context.dy(35),
                child: Row(
                  children: List.generate(7,(index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      color: index>=1?AppColor.raisinBlack:white,
                      width: (context.screenWidth-118)/7,
                      height: context.dy(5),
                    );
                  }),
                ),
              ),
              const Space.vertical(25)
              /*
              Space.vertical(context.dy(115)),
              Container(
                height: context.dy(60),
                width: context.screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: context.dx(50),
                      height: context.dy(50),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorName.raisinBlack
                      ),
                    ),
                    Space.horizontal(5),
                    Text("@ainfzsinfc",style: context.
                    textStyle(
                      colour: AppColor.raisinBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ),
              Space.vertical(context.dy(80)),
              SizedBox(
                height: context.dy(15),
                width: context.screenWidth,
               // padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Choose some movies categories you’re interested in",style: context.
                    textStyle(
                        colour: AppColor.raisinBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),),
                    Space.horizontal(1),
                    Icon(Icons.play_arrow_rounded,size: 18,)
                  ],
                ),
              ),
              */




            ],
          ),
        ),
      ),
    );
  }
}





class StepOneLogin extends StatelessWidget {
  const StepOneLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          height: context.dy(100),
          width: context.dx(100),
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorName.raisinBlack
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: white
            ),
          ),
        ),
        Padding(
          padding:const EdgeInsets.only(left: 35,right: 35,top: 10),
          child: BigButton(
            color: white,
            fixedSized: Size(
                context.dx(300),
                context.dy(50)),
            textStyle: context.textStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                colour: ColorName.raisinBlack
            ),
            labelText: "Upload the picture",
            onPressed: () {

            },),
        ),
        Padding(
          padding:const EdgeInsets.only(left: 35,right: 35,top: 10),
          child: SizedBox(
            height: context.dy(55),

            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  fillColor: white,
                  filled: true,
                  hintText: 'Add your username',
                  hintStyle: context.textStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      colour: AppColor.webblacktextfield
                  ),
                  prefixIcon:Icon(Icons.animation,color: ColorName.raisinBlack,) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),

            ),
          ),),
        Padding(
          padding:const EdgeInsets.only(left: 35,right: 35,top: 10),
          child: BigButton(
            color: transparent,
            borderSide: true,
            isWidgetNext: true,
            widgetNext: const Icon(Icons.arrow_forward,color: ColorName.raisinBlack,size: 18,),
            fixedSized: Size(
                context.dx(300),
                context.dy(50)),
            textStyle: context.textStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                colour: ColorName.raisinBlack
            ),
            labelText: "Next",
            onPressed: () {

            },),
        ),

      ],
    );
  }
}


class StepTwo extends StatelessWidget {
  const StepTwo({Key? key,required this.start,required this.middle,required this.end,required this.data}) : super(key: key);
  final String start,middle,end;
  final IconData data;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: context.dy(60),
          width: context.screenWidth,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: context.dx(50),
                height: context.dy(50),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorName.raisinBlack
                ),
              ),
              Space.horizontal(5),
              Text("@ainfzsinfc",style: context.
              textStyle(
                  colour: AppColor.raisinBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),)
            ],
          ),
        ),
        Space.vertical(context.dy(80)),
        Container(
          height: context.dy(25),
          width: context.screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text:
                TextSpan(
                    text: start,
                    style: context.textStyle(
                        colour: AppColor.raisinBlack,
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                    ),
                    children: [
                      TextSpan(
                          text: middle,
                          style: context.textStyle(
                              colour: AppColor.raisinBlack,
                              fontSize: 10,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      TextSpan(
                          text: end,
                          style: context.textStyle(
                              colour: AppColor.raisinBlack,
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                          )
                      ),

                    ]
                ),
                textAlign: TextAlign.center,),
              const Spacer(),
              Icon(data,size: 18,) ,
            ],
          ),
        ),
        SizedBox(
          height: context.dy(130),
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return Clickable(
                onClick: () => log("ok"),
                child:
                ModelCardOne(title: "Perry",
                  subtitle: "20th December 2020",
                  stacking: false,
                  width: context.dx(160),),

              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            physics: const BouncingScrollPhysics(),
          ),
        ),
        Padding(
          padding:const EdgeInsets.only(left: 35,right: 35,top: 10),
          child: Row(
            children: [
              BigButton(

                isWidgetPrevious: true,
                widgetPrevious: const Icon(Icons.arrow_back,color: white,size: 18,),
                // fixedSized: Size(
                //     context.dx(300),
                //     context.dy(50)),

                // textStyle: context.textStyle(
                //     fontWeight: FontWeight.w400,
                //     fontSize: 15,
                //     colour: ColorName.raisinBlack
                // ),
                fixedSized: Size(
                    context.dx(135),
                    context.dy(40)),
                textStyle: context.textStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    colour: white
                ),

                labelText: "Previous ",
                onPressed: () {

                },),
              Spacer(),
              BigButton(
                color: transparent,
                borderSide: true,
                isWidgetNext: true,
                widgetNext: const Icon(Icons.arrow_forward,color: ColorName.raisinBlack,size: 18,),
                fixedSized: Size(
                    context.dx(135),
                    context.dy(40)),

                textStyle: context.textStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    colour: ColorName.raisinBlack
                ),
                labelText: "Next",
                onPressed: () {

                },)
            ],
          ),
        ),

      ],
    );
  }
}
