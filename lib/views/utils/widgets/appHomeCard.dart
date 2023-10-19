import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/appwidgets/common/clickable.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';
import 'package:groovvee/views/utils/widgets/common/buttons.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';


class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.category,
      required this.subtitle,
      required this.title,
      required this.height,
      required this.image,
      required this.cas,
        this.stack=true,
        this.cas_search=false,
        required this.vertical,
      required this.see})
      : super(key: key);
  final String category;
  final String image;
  final String title;
  final String subtitle;
  final double height;
  final bool see;
  final int cas;
  final bool vertical,stack,cas_search;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(5),
      width: context.screenWidth,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category,
                  style: context.textStyle(
                    fontWeight: FontWeight.w800,
                      fontSize: 16,
                      colour:  context.isInDarkMode?
                      AppColor.webOrange:AppColor.raisinBlack
                  ),
                ),
                if (see)
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
          Expanded(
              child:
              SizedBox(
                  width: getSize(context).width,
                  child:
                      !vertical?
                  ListView.builder(
                    itemBuilder: (context, i) {
                      return Clickable(
                          onClick: () => log("ok"),
                          child: cas == 1
                              ?
                          ModelCardOne(title: "Perry",
                            subtitle: "20th December 2020",
                            stacking: stack,):
                              cas==2?
                              ModelCardTwo(title: title,content: "")
                              :cas==3?
                              ModelCardThree(title: title, price: "25000"):
                                  cas==4?
                                  ModelCardFour(
                                    title: title,
                                    cas_search:cas_search ,):
                               const MoviesCard()
                          //ModelCardOne(title: title,subtitle: subtitle,)
                          );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    physics: const BouncingScrollPhysics(),
                  ):


                      VipMusicCard(title: title,)
              )
          ),
        ],
      ),
    );
  }
}

class ModelCardOne extends StatelessWidget {
  const ModelCardOne({Key? key, required this.title,
    required this.subtitle,
    this.width=200,
    this.stacking=true})
      : super(key: key);
  final String title, subtitle;
  final bool stacking;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      width: width,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(3),
          boxShadow: shadow
        //         [
        //   BoxShadow(
        //       color: AppColor.greyOpac.withOpacity(0.2),
        //       offset: const Offset(2, 2),
        //       spreadRadius: 1.0,
        //       blurRadius: 1.5),
        //   BoxShadow(
        //       color: Colors.grey.withOpacity(0.2),
        //       offset: const Offset(-2, -2),
        //       spreadRadius: 1.0,
        //       blurRadius: 1.5),
        // ]
      ),
      child: Stack(

        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AppAssetsImages.wireGauze.svg(
                height: double.maxFinite,
                width: double.maxFinite,
                fit: BoxFit.cover),
          ),
          if(stacking)
          Container(
            padding: const EdgeInsets.all(5),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppCircleAvatar(
                  index: 1,
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                      text: "$title\n",
                      style: context.textStyle(colour:

                      AppColor.webOrange),
                      children: [
                        TextSpan(
                          text: '\t $subtitle',
                          style: AppTextStyles.textstyles_simple
                              .copyWith(color: AppColor.white),
                        )
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ModelCardTwo extends StatelessWidget {
  const ModelCardTwo({Key? key, required this.title, required this.content})
      : super(key: key);
  final title, content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      width: 200,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: 200,
            decoration: BoxDecoration(
                boxShadow: [
              BoxShadow(
                  color: AppColor.greyOpac.withOpacity(0.2),
                  offset: const Offset(2, 2),
                  spreadRadius: 1.0,
                  blurRadius: 1.5),
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(-2, -2),
                  spreadRadius: 1.0,
                  blurRadius: 1.5),
            ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: AppAssetsImages.wireGauze.svg(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            "Island",
            style: AppTextStyles.textstyles_simple.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color:AppColor.webOrange
                ),
          ),
          Row(
            children:  [
              Icon(
                Icons.star,
                color: context.isInDarkMode?
                AppColor.webOrange:
                AppColor.raisinBlack,
              ),
              Icon(
                Icons.star,
                color:   context.isInDarkMode?
                AppColor.webOrange:
                AppColor.raisinBlack,
              ),
              Icon(
                Icons.star,
                color:
                context.isInDarkMode?
                AppColor.webOrange:
                AppColor.raisinBlack,
              ),
              Icon(
                Icons.star,
                color:   context.isInDarkMode?
                AppColor.webOrange:
                AppColor.raisinBlack,
              ),
              Icon(
                Icons.star,
                color:   context.isInDarkMode?
                AppColor.webOrange:
                AppColor.raisinBlack,
              ),
            ],
          ),
          Text(
            "IslandECKEzri,vc,di,ocgdtiog,sxoi,fgcir,dxi,ecfi,rdi,xwsei,cfr,ficxdwc,ds,ew,diios",
            textAlign: TextAlign.justify,
            style: context.textStyle(
              colour: AppColor.sonicSilver
            ),
          ),
          Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: BigButton(

                onPressed: () {
                  log("ok");
                },
                labelText: "watch moovie",
              )),
        ],
      ),
    );
  }
}

class ModelCardThree extends StatelessWidget {
  const ModelCardThree({Key? key, required this.title, required this.price})
      : super(key: key);
  final String title, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.greyOpac.withOpacity(0.2),
                      offset: const Offset(2, 2),
                      spreadRadius: 1.0,
                      blurRadius: 1.5),
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(-2, -2),
                      spreadRadius: 1.0,
                      blurRadius: 1.5),
                ]),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  child:
                AppAssetsImages.wireGauze.svg(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),),
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 10),
                  child: Clickable(
                    onClick: () => log("ok"),
                    child: Container(
                    alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color:
                            context.isInDarkMode?
                                AppColor.raisinBlack.withOpacity(.2):
                        AppColor.webOrange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:  Icon(
                        Icons.add,
                        color:
                        context.isInDarkMode?
                            AppColor.webOrange:
                        AppColor.raisinBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: "Besty\n",
                    style: AppTextStyles.textstyles_simple
                        .copyWith(color: AppColor.sonicSilver),
                    children: [
                      TextSpan(
                        text: 'Chair',
                        style: AppTextStyles.textstyles_simple
                            .copyWith(color: AppColor.sonicSilver),
                      )
                    ]),
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                    text: "\$",
                    style: AppTextStyles.textstyles_simple
                        .copyWith(color:
                        context.isInDarkMode?
                            AppColor.webOrange:
                    AppColor.raisinBlack
                    ),
                    children: [
                      TextSpan(
                        text: ' $price',
                        style: AppTextStyles.textstyles_simple.copyWith(
                            color:  context.isInDarkMode?
                            AppColor.webOrange:
                            AppColor.raisinBlack,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      )
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ModelCardFour extends StatelessWidget {
   const ModelCardFour({Key? key, required this.title,this.cas_search=false})
      : super(key: key);
  final String title;
  final bool cas_search;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      width: 200,
      decoration:
          cas_search?
      BoxDecoration(
color:
    context.isInDarkMode?
AppColor.raisinBlack.withOpacity(.6):
          AppColor.webOrange,
          borderRadius: BorderRadius.circular(5),
          boxShadow:
          //     context.isInDarkMode?
          // [
          //   BoxShadow(
          //       color: AppColor.raisinBlack.withOpacity(0.2),
          //       offset: const Offset(2, 2),
          //       spreadRadius: 1.0,
          //       blurRadius: 1.5),
          //   BoxShadow(
          //       color:AppColor.webblack.withOpacity(0.2),
          //       offset: const Offset(-2, -2),
          //       spreadRadius: 1.0,
          //       blurRadius: 1.5),
          // ]:
              [
                BoxShadow(
                    color: AppColor.webOrange.withOpacity(0.2),
                    offset: const Offset(2, 2),
                    spreadRadius: 1.0,
                    blurRadius: 1.5),
                BoxShadow(
                    color:AppColor.webYellow.withOpacity(0.2),
                    offset: const Offset(-2, -2),
                    spreadRadius: 1.0,
                    blurRadius: 1.5),
              ]
      ):
          const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 185,
            decoration:
                cas_search?
                const BoxDecoration():
            BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.greyOpac.withOpacity(0.2),
                      offset: const Offset(2, 2),
                      spreadRadius: 1.0,
                      blurRadius: 1.5),
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(-2, -2),
                      spreadRadius: 1.0,
                      blurRadius: 1.5),
                ]),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  child: AppAssetsImages.wireGauze.svg(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Clickable(
                    onClick: () => log("ok"),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        color:
                        AppColor.webOrange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: AppColor.raisinBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 60,
              child:
                  cas_search?
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
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
                  Text(
                    AppString.recommandation,
                    textAlign: TextAlign.start,
                    style: context.textStyle(
                        fontSize: 15,
                        colour:
                        context.isInDarkMode?
                        AppColor.webOrange:
                        AppColor.white
                    ),
                  ),
                ],
              ):

              BigButton(
                onPressed: () {
                  log("ok");
                },
                labelText: "Play now",
              )
          ),
        ],
      ),
    );
  }
}

class TrendingCard extends StatelessWidget {
  const TrendingCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.subtitle})
      : super(key: key);
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(5),
      child: ListTile(
        title: Text(
          "indexou",
          style: AppTextStyles.textstyles_simple.copyWith(
            color: AppColor.white,
          ),
        ),
        trailing: AppAssetsImages.movies.svg(height: 30, width: 30),
        subtitle: Text(
          "titre de la chanson",
          style: AppTextStyles.textstyles_simple,
        ),
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: AppAssetsImages.movies
                .svg(height: 45, width: 40) //Image.asset(user.pictureUrl),
            ),
      ),
    );
  }
}

class MoviesCard extends StatelessWidget {
  const MoviesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: AppAssetsImages.movies.svg(width: 200));
  }
}



class LiveStreaming extends StatelessWidget {
  const LiveStreaming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getSize(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.greyOpac.withOpacity(0.2),
                        offset: const Offset(2, 2),
                        spreadRadius: 1.0,
                        blurRadius: 1.5),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(-2, -2),
                        spreadRadius: 1.0,
                        blurRadius: 1.5),
                  ]),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: AppAssetsImages.wireGauze.svg(fit: BoxFit.cover)),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Container(
                      height: 25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      decoration: BoxDecoration(
                          color: AppColor.raisinBlack,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        "Live",
                        style: AppTextStyles.textstyles_simple
                            .copyWith(color: AppColor.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ),
            SizedBox(
              height: 65,
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: AppAssetsImages.movies.svg(
                        height: 45, width: 35) //Image.asset(user.pictureUrl),
                    ),
                title: Text(
                  "Nom",
                  style: AppTextStyles.textstyles_simple
                      .copyWith(color: AppColor.white),
                ),
                subtitle: Text(
                  "Nom",
                  style: AppTextStyles.textstyles_simple
                      .copyWith(color: AppColor.white),
                ),
                trailing: TextButton(
                    onPressed: () => log("ok"),
                    child: Text(
                      "Follow +",
                      style: AppTextStyles.textstyles_simple.copyWith(color: AppColor.raisinBlack),
                    )),
              ),
            )
          ],
        ));
  }
}

class VipMusicCard extends StatelessWidget {
  const VipMusicCard({Key? key,required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            context.isInDarkMode?
                AppColor.webOrange:
        AppColor.raisinBlack,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyles.textstyles_simple.copyWith(color: AppColor.white),
      ),
    );
  }
}
