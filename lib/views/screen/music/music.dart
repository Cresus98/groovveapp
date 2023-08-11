import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


import 'package:groovvee/constantes.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/music/music_search.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/appHomeCard.dart';
import 'package:groovvee/views/utils/widgets/common/app_scaffold.dart';
import 'package:groovvee/views/utils/widgets/common/buttons.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';

import '../../utils/app_color.dart';
import '../../utils/widgets/common/designpath.dart';

class ListeningMusic extends StatefulWidget {
  const ListeningMusic({Key? key}) : super(key: key);
  static const routeName='listen-music';

  @override
  _ListeningMusicState createState() => _ListeningMusicState();
}

class _ListeningMusicState extends State<ListeningMusic> {
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
            Container(
              height: 86,
              padding: const EdgeInsets.only(left: 18),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  color:
                  context.isInDarkMode?
                  AppColor.webOrange:
                  AppColor.raisinBlack,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipPath(
                      child: AppAssetsImages.profile
                          .svg(height: context.dy(65),
                          width:context.dy(65), fit: BoxFit.cover),
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
                          style: context.textStyle(
                              colour:white,
                          fontSize: 17,
                          fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Despacito",
                          style: context.textStyle
                            (colour:white),
                        ),
                      ],
                    ),
                  )),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child:
                    Container(
                      alignment: Alignment.center,
                      height: context.dy(60),
                      width: context.dx(60),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          context.isInDarkMode?
                          AppColor.raisinBlack:
                          AppColor.webOrange
                      ),
                      child: Icon(Icons.play_arrow,
                        size: 35,
                        color:
                        context.isInDarkMode?
                        AppColor.webOrange:
                        AppColor.raisinBlack,),
                    ),
                    // AppAssetsImages.profile
                    //     .svg(height: 50, width: 50, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child:
                    Container(
                      alignment: Alignment.center,
                      height: context.dy(30),
                      width: context.dx(30),
                      child: Icon(Icons.play_arrow,
                        size: 18,
                        color:
                        context.isInDarkMode?
                        AppColor.raisinBlack:
                        AppColor.webOrange,),
                    ),
                    //AppAssetsImages.profile
                      //  .svg(height: 25, width: 25, fit: BoxFit.cover)

                  )
                ],
              ),
            ),
             HomeCard(
              height: context.dy(350),
              see: false,
              category: "Album",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              stack: false,
              vertical: false,
              cas: 1,),
             HomeCard(
              height: context.dy(350),
              see: false,
              category: "Classical Music",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              stack: false,
              vertical: false,
              cas: 1,),
             HomeCard(
              height: context.dy(350),
              see: false,
              category: "Top Charts",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              stack: false,
              vertical: false,
              cas: 1,),

            /*
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
              width: context.screenWidth,
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
                      style: context.textStyle(colour:AppColor.webOrange),
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
                      style: context.textStyle(fontSize: 15, colour: AppColor.webblack),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              width: context.screenWidth,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Stack(
                // alignment: Alignment.topCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 210,
                        width: context.screenWidth,
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


class PlayMusic extends StatefulWidget {
  const PlayMusic({Key? key}) : super(key: key);

  static const routeName='play-music';

  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  @override
  Widget build(BuildContext context) {
    return GauzyScaffold(
      content: Container(
        height: context.screenHeight,
        width: context.screenWidth,
        padding: EdgeInsets.only(
          right: context.dx(16.0),
          left: context.dx(16.0),
          top: context.dy(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(title: "Playing Now ",
              row: true,),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              width: context.screenWidth,
              height: context.dy(context.screenHeight*.6),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(3),
                  boxShadow: shadow
              
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: AppAssetsImages.wireGauze.svg(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: context.dy(80),
              padding: const EdgeInsets.all(5),
              child:ListTile(
                title: Text(
                  "Lovely",
                  style: context.textStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    colour:
                    context.isInDarkMode?
                    AppColor.white:AppColor.raisinBlack,
                  ),
                ),
                trailing: Clickable(
                  onClick: () => context.pushNamed(PlayMusic.routeName),
                  child:
                  Icon(Icons.favorite,
                    size: 25,
                    color:
                    context.isInDarkMode?
                    AppColor.white:
                    AppColor.raisinBlack,)
                ),
                subtitle: Text(
                  "Andrew tate & Elon Musk",
                  style:context.textStyle(
                    colour:AppColor.sonicSilver,
                  ),
                ),
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
                    child:Icon(Icons.fast_rewind,size: 25,)
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child:
                    Container(
                      alignment: Alignment.center,
                      height: context.dy(55.45),
                      width: context.dx(55.45),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          context.isInDarkMode?
                          AppColor.webOrange:
                          AppColor.sonicSilver
                      ),
                      child: Icon(Icons.play_arrow,
                        size: 35,
                        color:
                        context.isInDarkMode?
                        AppColor.raisinBlack:
                        AppColor.white,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.fast_forward,size: 25,),
                  )
                ],
              ),
            ),
            const Spacer(),
            SizedBox(height: 50,
            width: context.screenWidth,
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child:Icon(Icons.fast_rewind,size: 25,)
                ),
              const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.fast_forward,size: 25,),
                )
              ],
            ),),
            const SizedBox(height: 10,)

            /*
            Container(
              height: 225,
              width: context.screenWidth,
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
                      style: context.textStyle(colour:AppColor.webOrange),
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
                      style: context.textStyle(fontSize: 15, colour: AppColor.webblack),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              width: context.screenWidth,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Stack(
                // alignment: Alignment.topCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 210,
                        width: context.screenWidth,
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
