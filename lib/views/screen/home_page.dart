import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/controller/theme_manage.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/clickable.dart';
import 'package:groovvee/views/appwidgets/common/svg_button.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/moovies/movies_screen.dart';
import 'package:groovvee/views/screen/music/music.dart';
import 'package:groovvee/views/screen/music/music_search.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/widgets/appHomeCard.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';

import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';




class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {


  final search = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    search.dispose();
  }


  final tabIcons = [AppAssetsImages.home, AppAssetsImages.movies];
  int tabIndex=0;

  @override
  Widget build(BuildContext context) {
    final bottomColour =
    //ref.watch(isDarkTheme)?
    context.isInDarkMode ?
    AppColor.webOrange :
    AppColor.raisinBlack;

    Widget jumpto(int index)
    {
      switch(index)
      {
        case 0:
          return const MusicHomePage();
        case 1:
          return const MoviesScreen();
        default:
          return Container();
      }
    }


    return
      GauzyScaffold(
      shouldExtendBody: true,
      content:jumpto(tabIndex)
          /*
      SingleChildScrollView(
        child: Column(
          children: [
            const HomeTab(),
            const ImagesListe(),
            SpaceWiget(
                height: context.dy(50),
                margintop: 10,
                marginright: 10,
                marginleft: 5,
                marginbottom: 5,
                widget: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
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
                      ),
                    ),
                    IconButton(
                      onPressed: () => log('i0'),
                      icon:AppAssetsImages.searchlogo.svg(
                          height: context.dy(17.31),
                          width: context.dx(15.38)
                      ),
                    )
                  ],
                )),
            const HomeCard(
              height: 350,
              see: true,
              category: "New Feed",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              vertical: false,
              cas: 1,),
            const HomeCard(
              height: 350,
              see: true,
              category: "Trending Movies",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              vertical: false,
              cas: 2,),
            const HomeCard(
              height: 350,
              see: true,
              category: "Best Sells",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              vertical: false,
              cas: 3,),
            const HomeCard(
              height: 350,
              see: true,
              category: "Play Games",
              subtitle: "subtitle",
              title: "Perry",
              image: "",
              vertical: false,
              cas: 4,),
            Container(
              padding: const EdgeInsets.only(left: 8,right: 4),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Podcast",
                    style: context.textStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        colour:  context.isInDarkMode?
                        AppColor.webOrange:AppColor.raisinBlack
                    ),
                  ),
                  TextButton(
                      onPressed: () => log("ok"),
                      child: Text(
                        "See all",
                        style: context.textStyle(
                            colour:  context.isInDarkMode?
                            AppColor.webOrange:AppColor.raisinBlack
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            for(int i=0;i<4;i++)
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
                      AppColor.webOrange:AppColor.raisinBlack,
                    ),
                  ),
                  trailing: Clickable(
                    onClick: () => log("ok"),
                    child:
                    i==0?
                    Container(
                      alignment: Alignment.center,
                      height: context.dy(38.45),
                      width: context.dx(38.45),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          context.isInDarkMode?
                          AppColor.webOrange:
                          AppColor.sonicSilver
                      ),
                      child: Icon(Icons.play_arrow,
                        size: 18,
                        color:
                        context.isInDarkMode?
                        AppColor.raisinBlack:
                        AppColor.white,),
                    ):
                    Container(
                      alignment: Alignment.center,
                      height: context.dy(38.45),
                      width: context.dx(38.45),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          context.isInDarkMode?
                          AppColor.webOrange:
                          AppColor.sonicSilver
                      ),
                      child: Container(
                        height: context.dy(38.45),
                        width: context.dx(38.45),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                            context.isInDarkMode?
                            AppColor.raisinBlack:
                            AppColor.webOrange
                        ),
                        child: Icon(Icons.play_arrow,
                          size: 18,
                          color:
                          context.isInDarkMode?
                          AppColor.webOrange:
                          AppColor.raisinBlack,),
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Andrew tate & Elon Musk",
                    style:context.textStyle(
                      colour:AppColor.sonicSilver,
                    ),
                  ),
                  leading:
                  ClipRRect(
                      borderRadius: BorderRadius.circular(19.0),
                      child: AppAssetsImages.rectangle.svg(
                          height: 70,width: 70
                      )                   //Image.asset(user.pictureUrl),
                  ),
                ),
              ),

            const SizedBox(height: 100,),
          ],
        ),
      )
        */,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15.0),
        ),
        child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 1,
            clipBehavior: Clip.hardEdge,
            color: bottomColour,
            child: SizedBox(
              height: context.dy(56.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int index = 0; index < tabIcons.length; index++)
                    SvgButtonBottom(
                      onTap: ()
                      {
                            tabIndex=index;
                            setState(() {});
                            log(tabIndex);
                      },
                           //dashboard.update(tabIndex: index),
                       filterColour:
                       tabIndex == index ?
                       context.isInDarkMode?
                      AppColor.raisinBlack
                           : AppColor.webOrange
                           :AppColor.white,
                      width: 28.0,
                      asset: tabIcons[index],
                    ),
                ],
              ),
            )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        child: SvgButton(
          asset: context.isInDarkMode?
             AppAssetsImages.fabDark
          :AppAssetsImages.fab,

          onTap: () {},
        ),
      ),
    )
    ;
  }

}




class MusicHomePage extends StatefulWidget {
  const MusicHomePage({Key? key}) : super(key: key);

  @override
  _MusicHomePageState createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
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
          const HomeTab(),
          const ImagesListe(),
          SpaceWiget(
              height: context.dy(50),
              margintop: 10,
              marginright: 10,
              marginleft: 5,
              marginbottom: 5,
              widget: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onTap: () => context.pushNamed(SearchMusic.routeName),
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
                    ),
                  ),
                  IconButton(
                    onPressed: () => log('i0'),
                    icon:AppAssetsImages.searchlogo.svg(
                        height: context.dy(17.31),
                        width: context.dx(15.38)
                    ),
                  )
                ],
              )),
          const HomeCard(
            height: 350,
            see: true,
            category: "New Feed",
            subtitle: "subtitle",
            title: "Perry",
            image: "",
            vertical: false,
            cas: 1,),
          const HomeCard(
            height: 350,
            see: true,
            category: "Trending Movies",
            subtitle: "subtitle",
            title: "Perry",
            image: "",
            vertical: false,
            cas: 2,),
          const HomeCard(
            height: 350,
            see: true,
            category: "Best Sells",
            subtitle: "subtitle",
            title: "Perry",
            image: "",
            vertical: false,
            cas: 3,),
          const HomeCard(
            height: 350,
            see: true,
            category: "Play Games",
            subtitle: "subtitle",
            title: "Perry",
            image: "",
            vertical: false,
            cas: 4,),
          Container(
            padding: const EdgeInsets.only(left: 8,right: 4),
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending Podcast",
                  style: context.textStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      colour:  context.isInDarkMode?
                      AppColor.webOrange:AppColor.raisinBlack
                  ),
                ),
                TextButton(
                    onPressed: () => log("ok"),
                    child: Text(
                      "See all",
                      style: context.textStyle(
                          colour:  context.isInDarkMode?
                          AppColor.webOrange:AppColor.raisinBlack
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          for(int i=0;i<4;i++)
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
                    AppColor.webOrange:AppColor.raisinBlack,
                  ),
                ),
                trailing: Clickable(
                  onClick: () => context.pushNamed(PlayMusic.routeName),
                  child:
                  i==0?
                  Container(
                    alignment: Alignment.center,
                    height: context.dy(38.45),
                    width: context.dx(38.45),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                        context.isInDarkMode?
                        AppColor.webOrange:
                        AppColor.sonicSilver
                    ),
                    child: Icon(Icons.play_arrow,
                      size: 18,
                      color:
                      context.isInDarkMode?
                      AppColor.raisinBlack:
                      AppColor.white,),
                  ):
                  Container(
                    alignment: Alignment.center,
                    height: context.dy(38.45),
                    width: context.dx(38.45),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                        context.isInDarkMode?
                        AppColor.webOrange:
                        AppColor.sonicSilver
                    ),
                    child: Container(
                      height: context.dy(38.45),
                      width: context.dx(38.45),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          context.isInDarkMode?
                          AppColor.raisinBlack:
                          AppColor.webOrange
                      ),
                      child: Icon(Icons.play_arrow,
                        size: 18,
                        color:
                        context.isInDarkMode?
                        AppColor.webOrange:
                        AppColor.raisinBlack,),
                    ),
                  ),
                ),
                subtitle: Text(
                  "Andrew tate & Elon Musk",
                  style:context.textStyle(
                    colour:AppColor.sonicSilver,
                  ),
                ),
                leading:
                ClipRRect(
                    borderRadius: BorderRadius.circular(19.0),
                    child: AppAssetsImages.rectangle.svg(
                        height: 70,width: 70
                    )                   //Image.asset(user.pictureUrl),
                ),
              ),
            ),

          const SizedBox(height: 100,),
        ],
      ),
    );

    /*
      GauzyScaffold(
      shouldExtendBody: true,
      content: SingleChildScrollView(
        child: SpaceWiget(
          height: double.maxFinite,
          width: double.maxFinite,
          widget: Column(
            children: [
              const HomeTab(),
              const ImagesListe(),
              SpaceWiget(
                  height: 50,
                  margintop: 5,
                  marginright: 5,
                  marginleft: 5,
                  marginbottom: 5,
                  widget: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: search,
                          style: AppTextStyles.textstyles_simple.copyWith(
                              color: AppColor.sonicSilver, fontSize: 12),
                          decoration: AppTextFieldStyles
                              .text_form_field_decoration
                              .copyWith(
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
                                          Icons.add_circle_outlined,
                                          color: AppColor.raisinBlack,
                                          size: 15,
                                        ),
                                      ),
                                      Clickable(
                                        onClick: () => print("ok"),
                                        child: const Icon(
                                          Icons.add_circle_outlined,
                                          color: AppColor.raisinBlack,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  )),
                        ),
                      ),
                      SpaceWiget(
                          height: 40,
                          width: 35,
                          marginleft: 5,
                          margintop: 2,
                          marginright: 3,
                          widget: IconButton(
                            onPressed: () => log('i0'),
                            icon: const Icon(
                              Icons.add_circle_outlined,
                              color: AppColor.raisinBlack,
                            ),
                          ))
                    ],
                  )),
              HomeCard(
                height: 350,
                  see: true,
                  category: "New Feed",
                  subtitle: "subtitle",
                  title: "Perry",
                  image: "",
              vertical: false,
              cas: 1,),
              Container(
                height: 70,
                padding: const EdgeInsets.all(5),
                child:ListTile(

                  title: Text(
                    "indexou",
                    style: AppTextStyles.textstyles_simple.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  trailing: AppAssetsImages.movies.svg(
                      height: 30,width: 30
                  ) ,
                  subtitle: Text(
                    "titre de la chanson",
                    style: AppTextStyles.textstyles_simple,
                  ),
                  leading:
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: AppAssetsImages.movies.svg(
                        height: 45,width: 40
                      )                    //Image.asset(user.pictureUrl),
                  ),
                ),
              ),
              HomeCard(
                vertical: false,
                  height: 350,
                  see: false,
                  category: "New Feed",
                  subtitle: "subtitle",
                  title: "Perry",
                  image: "",
              cas: 3,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12.0),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 1,
          clipBehavior: Clip.hardEdge,
          color: bottomColour,
          //clipBehavior: Clip.hardEdge,
          //height: 56.0,
          child: SizedBox(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var index = 0; index < tabIcons.length; index++)
                  SvgButton(
                    onTap: () => log("okayeh"),
                    //     dashboard.update(tabIndex: index),
                    // filterColour: tabIndex == index
                    //     ? context.isInDarkMode
                    //     ? ColorName.raisinBlack
                    //     : ColorName.webOrange
                    //     : null,
                    width: 28.0,
                    asset: tabIcons[index],
                  ),
              ],
            ),
          )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        child: SvgButton(
          //asset: context.isInDarkMode
            //  ? Assets.graphics.fabDark
              //:

          onTap: () {}, asset: AppAssetsImages.fab,
        ),
      ),
    )
    */
    ;
  }
}
