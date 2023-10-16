import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/clickable.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';


import '../../utils/widgets/appHomeCard.dart';
import '../../utils/widgets/common/widget_bar.dart';



class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {

  final search = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    search.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(title: "Moovies"),
          SpaceWiget(
              height: context.dy(50),
              margintop: 10,
              marginright: 10,
              marginleft: 5,
              marginbottom: 5,
              widget:TextFormField(
                onTap: () => context.pushNamed(SearchScreen.routeName),
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
                          onClick: () => print("ok"),
                          child: const Icon(
                            Icons.keyboard_voice,
                            color: AppColor.raisinBlack,
                            size: 15,
                          ),
                        ),
                        Clickable(
                          onClick: () => print("ok"),
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
            height: 250,
            see: true,
            category: "Trending TV Shows",
            subtitle: "subtitle",
            title: "Perry",
            image: "",
            vertical: false,
            cas: 5,),
          const HomeCard(
            height: 250,
            see: true,
            category: "Familly Shows",
            subtitle: "subtitle",
            title: "Perry",
            image: "",
            vertical: false,
            cas: 5,),
          const HomeCard(
            height: 250,
            see: true,
            category: "Love Shows",
            subtitle: "subtitle",
            title: "Perry",
            image: "",
            vertical: false,
            cas: 5,),
          const SizedBox(height: 100,)
        ],
      ),
    );
  }
}


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static const routeName = 'search-screen';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
      content: SafeArea(
        child: Container(
          height: context.screenHeight,
          width: context.screenWidth,
          padding: EdgeInsets.only(
            right: context.dx(16.0),
            left: context.dx(16.0),
            top: context.dy(20.0),
          ),
          child:Column(
            children: [
              const Header(title: "Search"),
              SpaceWiget(
                  height: context.dy(50),
                  margintop: 10,
                  marginright: 10,
                  marginleft: 5,
                  marginbottom: 5,
                  widget:TextFormField(
                    onChanged: (value) {
                      setState(() {

                      });
                    },
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
                              onClick: () => print("ok"),
                              child: const Icon(
                                Icons.keyboard_voice,
                                color: AppColor.raisinBlack,
                                size: 15,
                              ),
                            ),
                            Clickable(
                              onClick: () => print("ok"),
                              child: const Icon(
                                Icons.keyboard_voice,
                                color: AppColor.raisinBlack,
                                size: 15,
                              ),
                            ),
                          ],
                        )),
                  )),
              const SizedBox(height: 20,),
              Expanded(child:
              search.text.isEmpty?
              Center(child: Container(),):
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                physics: bouncingScrollPhysics,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index)
                =>Container(
                    margin: const EdgeInsets.all(8),
                    height: context.dy(140),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: AppAssetsImages.rectangle.
                          svg(
                              width:  context.dy(90),
                              height:  context.dy(140),
                              fit: BoxFit.cover
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child:Text("Spiderman",textAlign: TextAlign.left,
                                  style: context.textStyle(

                                      colour:
                                      context.isInDarkMode?AppColor.webOrange:
                                      AppColor.raisinBlack
                                  ),) ),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.star,
                                      color:context.isInDarkMode?
                                      AppColor.webOrange:
                                      AppColor.raisinBlack,),
                                    Padding(padding: const EdgeInsets.only(left: 3),
                                      child: Text("5.0",
                                        style: context.textStyle(
                                            colour: context.isInDarkMode?
                                            AppColor.webOrange:AppColor.raisinBlack
                                        ),),)
                                  ],
                                ) ),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.star,
                                      color:white,),
                                    Padding(padding: const EdgeInsets.only(left: 3),
                                      child: Text("Action",
                                        style: context.textStyle(
                                            colour:white
                                        ),),)
                                  ],
                                ) ),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.star,
                                      color:white,),
                                    Padding(padding: const EdgeInsets.only(left: 3),
                                      child: Text("2019",
                                        style: context.textStyle(
                                            colour: white
                                        ),),)
                                  ],
                                ) ),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.star,
                                      color:white,),
                                    Padding(padding: const EdgeInsets.only(left: 3),
                                      child: Text("120 minutes",
                                        style: context.textStyle(
                                            colour: white
                                        ),),)
                                  ],
                                ) ),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child:Container()),
                          ],
                        )
                      ],
                    )
                ) ,))
            ],
          ),
        ),
      ),
    );
  }
}


