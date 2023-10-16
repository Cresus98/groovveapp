import 'package:flutter/material.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/clickable.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/widgets/appHomeCard.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';
import 'package:groovvee/views/utils/widgets/common/buttons.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';


class SearchMusic extends StatefulWidget {
  const SearchMusic({Key? key}) : super(key: key);
  static const routeName='search-music';

  @override
  _SearchMusicState createState() => _SearchMusicState();
}

class _SearchMusicState extends State<SearchMusic> {

  final search = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    search.dispose();
  }

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
            const Header(title: "Music"),
            SpaceWiget(
                height: context.dy(50),
                margintop: 10,
                marginright: 10,
                marginleft: 5,
                marginbottom: 5,
                widget:TextFormField(
                  onTap: () =>log("ok"),
                  controller: search,
                  style: AppTextStyles.textstyles_simple.copyWith(
                      color: AppColor.sonicSilver, fontSize: 12),
                  decoration: AppTextFieldStyles
                      .text_form_field_decoration
                      .copyWith(
                      contentPadding: const EdgeInsets.only(top: 1,left: 5),
                      hintText: "Search anything here",
                      hintStyle: AppTextStyles.textstyles_simple
                          .copyWith(
                          color: AppColor.sonicSilver,
                          fontSize: 12),
                      suffixIcon: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Clickable(
                            onClick: () => log("ok"),
                            child: const Icon(
                              Icons.keyboard_voice,
                              color: AppColor.raisinBlack,
                              size: 15,
                            ),
                          ),
                          Clickable(
                            onClick: () => log("ok"),
                            child: const Icon(
                              Icons.keyboard_voice,
                              color: AppColor.raisinBlack,
                              size: 15,
                            ),
                          ),
                        ],
                      )),
                )),
            const HomeCard(
              height: 350,
              see: false,
              category: "Popular Playlist",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              vertical: false,
              cas_search: true,
              cas: 4,),
            Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 8,left: 10),
              child: Text(
                AppString.recommandation,
                textAlign: TextAlign.start,
                style: context.textStyle(
                    fontSize: 18,
                    colour:
                    context.isInDarkMode?
                    AppColor.white:
                        AppColor.raisinBlack
                ),
              ),
            ),
            for(int i=0;i<5;i++)
              SizedBox(
                height: 65,
                width: context.screenWidth,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: AppAssetsImages.rectangle.svg(height: 50, width: 50),
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
                          AppColor.webOrange:
                          AppColor.raisinBlack,
                          fontSize: 14
                      )),
                  trailing: Icon(
                    i==2?
                    Icons.favorite:
                    Icons.favorite_border,
                    color:
                    context.isInDarkMode?
                    AppColor.white:
                    AppColor.raisinBlack,
                  ),
                ),
              ),
            const SizedBox(height: 30,)


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
