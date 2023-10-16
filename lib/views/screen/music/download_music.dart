import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/clickable.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';


import '../../utils/widgets/common/widget_bar.dart';

class DownLoadMusic extends StatefulWidget {
  const DownLoadMusic({Key? key}) : super(key: key);
  static const routeName='download-music';

  @override
  _DownLoadMusicState createState() => _DownLoadMusicState();
}

class _DownLoadMusicState extends State<DownLoadMusic> {
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
            const Header(title: ""),
            RoundCard(width: context.dy(180), height: context.dy(180), image: ""),
            Container(
              height: 75,
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: context.screenWidth,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 75,
                        color: AppColor.raisinBlack,
                        child: RichText(
                          text: TextSpan(
                              text: "Miss You\n",
                              style: context.textStyle(
                                colour:
                                AppColor.webOrange
                              ),
                              children: [
                                TextSpan(
                                  text: AppString.prenium_content,
                                  style: AppTextStyles.textstyles_simple
                                      .copyWith(color:
                                      context.isInDarkMode?
                                  AppColor.webOrange:
                                  AppColor.raisinBlack),
                                )
                              ]),
                        ),
                      )),
                  Container(
                      height: 75,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Clickable(
                              child: Container(
                                height: context.dy(45),
                                width: context.dy(45),
                                decoration:
                                BoxDecoration(
                                  color:
                                  context.isInDarkMode?
                                  AppColor.webOrange:
                                  AppColor.raisinBlack,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.favorite_border,color: AppColor.white,),
                              ),
                              onClick: () => log("ok"),
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Clickable(
                              child: Container(
                                height: context.dy(45),
                                width: context.dy(45),
                                decoration:
                                BoxDecoration(
                                  color:
                                  context.isInDarkMode?
                                  AppColor.webOrange:
                                  AppColor.raisinBlack,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.favorite_border,color: AppColor.white,),
                              ),
                              onClick: () => log("ok"),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Clickable(
                              child: Container(
                                height: context.dy(45),
                                width: context.dy(45),
                                decoration:
                                BoxDecoration(
                                  color:
                                  context.isInDarkMode?
                                  AppColor.webOrange:
                                  AppColor.raisinBlack,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.favorite_border,color: AppColor.white,),
                              ),
                              onClick: () => log("ok"),

                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            for(int i=0;i<5;i++)
            SizedBox(
              height: 65,
              width: context.screenWidth,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AppAssetsImages.movies.svg(height: 50, width: 50),
                ),
                title: Text("Titre",style:
                context.textStyle(
                  colour:
                      context.isInDarkMode?
                          AppColor.white:
                  AppColor.raisinBlack,
                  fontSize: 16
                ),),
                subtitle: Text("Subtitle",
                    style:
                    context.textStyle(
                        colour:
                        context.isInDarkMode?
                        AppColor.white:
                        AppColor.raisinBlack,
                        fontSize: 14
                    )),
                trailing: const Icon(
                  Icons.more_vert,
                  color: white,
                ),
              ),
            ),
            const SizedBox(height: 30,)

            /*
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
*/
          ],
        ),
      ),
    );
  }
}
