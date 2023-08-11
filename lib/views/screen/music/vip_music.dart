import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/music/download_music.dart';
import 'package:groovvee/views/screen/music/music.dart';
import 'package:groovvee/views/screen/profile/settings_screen.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/widgets/appHomeCard.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';
import 'package:groovvee/views/utils/widgets/common/app_scaffold.dart';
import 'package:groovvee/views/utils/widgets/common/buttons.dart';
import 'package:groovvee/views/utils/widgets/common/designpath.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';

class VipMusic extends StatefulWidget {
  const VipMusic({Key? key}) : super(key: key);

  static const routeName = 'vip-music';

  @override
  _VipMusicState createState() => _VipMusicState();
}

class _VipMusicState extends State<VipMusic> {
  @override
  Widget build(BuildContext context) {
    return GauzyScaffold(
      content: SingleChildScrollView(
        padding: EdgeInsets.only(
          right: context.dx(16.0),
          left: context.dx(16.0),
          top: context.dy(20.0),
        ),
        child: Column(
          children: [
            Header(title: AppString.benefits),
            for (int i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Clickable(
                  onClick: () => context.pushNamed(VipSuscirbe.routeName),
                  child: HomeCard(
                    category: AppString.exclusive_list[i],
                    height: 200,
                    subtitle: "",
                    see: false,
                    title: AppString.exclusive_content[i],
                    image: "",
                    cas: 5,
                    vertical: true,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class VipSuscirbe extends StatefulWidget {
  const VipSuscirbe({Key? key}) : super(key: key);

  static const routeName = "vip-suscribe";

  @override
  _VipSuscirbeState createState() => _VipSuscirbeState();
}

class _VipSuscirbeState extends State<VipSuscirbe> {
  @override
  Widget build(BuildContext context) {
    return GauzyScaffold(
      content: SingleChildScrollView(
        padding: EdgeInsets.only(
          right: context.dx(16.0),
          left: context.dx(16.0),
          top: context.dy(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(title: ""),
            Clickable(
              onClick: () => log("ok"),
              child: Container(
                height: context.dy(50),
                padding: const EdgeInsets.only(left: 18),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: context.isInDarkMode
                        ? AppColor.webOrange
                        : AppColor.raisinBlack,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Text(
                      "Get more as a VIP",
                      style: AppTextStyles.textstyles_simple
                          .copyWith(fontSize: 24, color: AppColor.white),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.arrow_forward_ios,
                          color: context.isInDarkMode
                              ? AppColor.raisinBlack
                              : AppColor.webOrange),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 8,left: 10),
              child: Text(
                AppString.whyvip,
                textAlign: TextAlign.start,
                style: context.textStyle(
                  fontSize: 18,
                    colour: AppColor.white
                ),
              ),
            ),
            SizedBox(
              height: context.dy(130),
              width: getSize(context).width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Clickable(
                  onClick: () => context.pushNamed(DownLoadMusic.routeName),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: context.dx(142),
                    decoration: BoxDecoration(
                        color: context.isInDarkMode
                            ? AppColor.webOrange
                            : AppColor.raisinBlack,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppAssetsImages.movies.svg(
                            color:
                                context.isInDarkMode?
                            AppColor.raisinBlack:
                            AppColor.webOrange, width: 25, height: 25),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          AppString.exclusive_list[index],
                          textAlign: TextAlign.center,
                          style: context.textStyle(
                            colour: AppColor.white
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            for(int i=0;i<3;i++)
            Clickable(
              onClick: () => context.pushNamed(ListeningMusic.routeName),
              child: Container(
                height: context.dy(170),
                width: getSize(context).width,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color:
                      context.isInDarkMode?
                          AppColor.webOrange:
                  AppColor.raisinBlack,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      height: context.dy(60),
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: Row(
                        children: [
                          Text(
                            'Monthly Bundle',
                            style: AppTextStyles.textstyles_simple
                                .copyWith(
                              fontSize: 20,
                                color: AppColor.raisinBlack),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              '\$ 6',
                              style: AppTextStyles.textstyles_simple
                                  .copyWith(
                                fontSize: 20,
                                  color: AppColor.raisinBlack),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Text(
                      AppString.prenium_content,
                      textAlign: TextAlign.center,
                          style: context.textStyle(
                            colour:
                              context.isInDarkMode?
                                  AppColor.raisinBlack:
                                  AppColor.webOrange
                          ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              alignment: Alignment.center,
              width: context.screenWidth,
              child: SizedBox(
                width: context.dx(305.0),
                height: context.dy(64),
                child: BigButton(
                  circle: 30,
                  size: 24,
                  onPressed: () => context.pushNamed(SettingsScreen.routeName),
                  labelText: AppString.suscribe,
                ),
              ),
            ),
            const SizedBox(height: 25,),


            /*
            RoundCard(width: 180, height: 180, image: ""),
            Container(
              height: 75,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: getSize(context).width,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 75,
                    color: AppColor.raisinBlack,
                    child: RichText(
                      text: TextSpan(
                          text: "Miss You\n",
                          style: AppTextStyles.textstyles_simple
                              .copyWith(color: AppColor.webOrange),
                          children: [
                            TextSpan(
                              text: 'Le titieined  erjdnxfedlje ezjnxe',
                              style: AppTextStyles.textstyles_simple
                                  .copyWith(color: AppColor.webOrange),
                            )
                          ]),
                    ),
                  )),
                  Container(
                      color: AppColor.white,
                      height: 75,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            child: Clickable(
                              onClick: () => log("ok"),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: AppColor.raisinBlack,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                          ),
                          Padding(
                            child: Clickable(
                              onClick: () => log("ok"),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: AppColor.raisinBlack,
                                    shape: BoxShape.circle),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                          ),
                          Padding(
                            child: Clickable(
                              onClick: () => log("ok"),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: AppColor.raisinBlack,
                                    shape: BoxShape.circle),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 65,
              width: getSize(context).width,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AppAssetsImages.movies.svg(height: 50, width: 50),
                ),
                title: Text("Titre"),
                subtitle: Text("Subtitle"),
                trailing: const Icon(
                  Icons.more_vert,
                  color: white,
                ),
              ),
            ),
            Container(
              height: 86,
              padding: const EdgeInsets.only(left: 18),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  color: AppColor.raisinBlack,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipPath(
                      child: AppAssetsImages.profile
                          .svg(height: 60, width: 60, fit: BoxFit.cover),
                      clipper: MyCustomClipper(),
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Despacito",
                          style: AppTextStyles.textstyles_simple
                              .copyWith(color: white),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Despacito",
                          style: AppTextStyles.textstyles_simple
                              .copyWith(color: white),
                        ),
                      ],
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AppAssetsImages.profile
                        .svg(height: 50, width: 50, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: AppAssetsImages.profile
                        .svg(height: 25, width: 25, fit: BoxFit.cover),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 86,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: AppAssetsImages.profile
                        .svg(height: 30, width: 30, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AppAssetsImages.profile
                        .svg(height: 60, width: 60, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: AppAssetsImages.profile
                        .svg(height: 30, width: 30, fit: BoxFit.cover),
                  )
                ],
              ),
            ),
            Container(
              height: 225,
              width: getSize(context).width,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.raisinBlack,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 165,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Free Plan",
                      style: AppTextStyles.textstyles_simple
                          .copyWith(color: AppColor.webOrange),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      child: Container(
                        height: 120,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: white),
                        child: Text("\$0"),
                      ))
                ],
              ),
            ),
            Container(
              height: 65,
              padding: const EdgeInsets.only(left: 18),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  color: AppColor.webwhite,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                      child: const Icon(Icons.check, color: AppColor.webgreen),
                      padding: const EdgeInsets.symmetric(horizontal: 4)),
                  Expanded(
                    child: Text(
                      "Get more as a VIP",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.textstyles_simple
                          .copyWith(fontSize: 15, color: AppColor.webblack),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              width: getSize(context).width,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Stack(
                // alignment: Alignment.topCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 210,
                        width: getSize(context).width,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              child: AppAssetsImages.wireGauze.svg(
                                  fit: BoxFit.cover,
                                  height: 210,
                                  width: double.maxFinite),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: AppColor.webwhite.withOpacity(.1),
                              child:
                                  const Icon(Icons.add, color: AppColor.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            child: Text("Le titre"),
                            padding: const EdgeInsets.only(left: 120),
                          ),
                          Padding(
                            child: Text("Le titre"),
                            padding: const EdgeInsets.only(left: 120),
                          ),
                        ],
                      ))
                    ],
                  ),
                  Positioned(
                      top: 170,
                      bottom: 0,
                      left: 27,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppAssetsImages.wireGauze
                            .svg(height: 80, width: 120, fit: BoxFit.cover),
                      ))
                ],
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}
