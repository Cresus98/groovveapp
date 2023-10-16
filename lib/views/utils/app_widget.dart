
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/theme.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';
import 'package:groovvee/views/utils/widgets/common/designpath.dart';

/*
class  AppScaffold extends StatefulWidget {
  const  AppScaffold({Key? key}) : super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State< AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


class GauzyScaffold extends StatelessWidget {
  const GauzyScaffold({
  this.floatingActionButtonLocation,
  this.floatingActionButton,
  this.bottomNavigationBar,
  this.shouldExtendBody,
  this.overlayStyle,
  this.shouldResize,
  this.bottomSheet,
  this.content,
  super.key,
});

final FloatingActionButtonLocation? floatingActionButtonLocation;
final SystemUiOverlayStyle? overlayStyle;
final Widget? floatingActionButton;
final Widget? bottomNavigationBar;
final Widget? bottomSheet;
final Widget? content;

final bool? shouldExtendBody;
final bool? shouldResize;

@override
Widget build(BuildContext context) {
  return
 /*
    AnnotatedRegion(
    value: overlayStyle ?? context.defaultSystemUiOverlayStyle,
    child: Scaffold(
      bottomSheet: bottomSheet,
      backgroundColor:
      context.isInDarkMode ? ColorName.raisinBlack : ColorName.webOrange,
      floatingActionButtonLocation: floatingActionButtonLocation,
      resizeToAvoidBottomInset: shouldResize ?? false,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: shouldExtendBody ?? false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          (context.isInDarkMode
              ? Assets.graphics.wireGauzeDark
              : Assets.graphics.wireGauze)
              .svg(
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          if (content != null) content!,
        ],
      ),
    ),
  )
 */
    Scaffold(
      bottomSheet: bottomSheet,
      backgroundColor:
       //context.isInDarkMode ?
      AppColor.raisinBlack,
      //     : AppColor.webOrange,
      floatingActionButtonLocation: floatingActionButtonLocation,
      resizeToAvoidBottomInset: shouldResize ?? false,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: shouldExtendBody ?? false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // (context.isInDarkMode
          //     ? Assets.wireGauzeDark
          //     : Assets.graphics.wireGauze)
          //     .svg(
          //   height: double.maxFinite,
          //   width: double.maxFinite,
          //   fit: BoxFit.cover,
          // ),
          if (content != null) content!,
        ],
      ),
    )
  ;
}
}
*/


/*
/// AssetImage
class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

/// AssetSvg
class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    //@deprecated Color? color,
     Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,

      //colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

*/


class ImagesListe extends StatelessWidget {
  const ImagesListe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpaceWiget(
      height: context.dy(79.79),
       marginleft: 4,
      marginright: 4,
      widget:ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder:
            (context, index) =>
            SpaceWiget(
                height: context.dy(79.79),
                width: context.dy(79.79),
                widget: Column(
                  children: [
                    AppCircleAvatar(index: index,height: context.dy(55),),
                    // Container(
                    //   height: 58,
                    //   width: 58,
                    //   decoration: const BoxDecoration(
                    //     color: AppColor.raisinBlack,
                    //     shape: BoxShape.circle
                    //   ),
                    //   child: Stack(
                    //     alignment: Alignment.center,
                    //     children: [
                    //       ClipPath(
                    //         child: AppAssetsImages.profile.
                    //         svg(
                    //             height: 55,
                    //             width: 55,
                    //             fit: BoxFit.cover),
                    //         clipper: MyCustomClipper(),
                    //       ),
                    //       if(index==0)
                    //         Container(
                    //           alignment: Alignment.center,
                    //           height: 55,
                    //           width: 55,
                    //           decoration:  BoxDecoration(
                    //               color: AppColor.raisinBlack.withOpacity(.25),
                    //               shape: BoxShape.circle
                    //           ),
                    //           child: const Icon(Icons.add,color: AppColor.white),
                    //         ),
                    //     ],
                    //   ),
                    // ),
                    Text("Name",style:
                    AppTextStyles.textstyles_simple
                      .copyWith(
                        color:
                    index==0?
                        context.isInDarkMode?
                    AppColor.white: AppColor.sonicSilver
                            :
                    context.isInDarkMode?
                    AppColor.webOrange:
                    AppColor.raisinBlack
                    ),)
                  ],
                )),) ,
    );
  }
}


class AppCircleAvatar extends StatelessWidget {
   AppCircleAvatar({Key? key, required this.index,this.height=58}) : super(key: key);
  final int index;
  final double height;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      width: height,
      decoration:  BoxDecoration(
          color:
          context.isInDarkMode?
          AppColor.webOrange:
          AppColor.raisinBlack,
          shape: BoxShape.circle
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipPath(
            child: AppAssetsImages.profile
            //sampleProfilePicture.
            //image(
            .svg(
                height:height-3,
                fit: BoxFit.cover),
            clipper: MyCustomClipper(),
          ),
          if(index==0)
            Container(
              alignment: Alignment.center,
              height: 55,
              width: 55,
              decoration:  BoxDecoration(
                  color: AppColor.raisinBlack.withOpacity(.25),
                  shape: BoxShape.circle
              ),
              child: const Icon(Icons.add,color: AppColor.white),
            ),
        ],
      ),
    );
  }
}







class Space extends StatelessWidget {
  const Space.horizontal(this.width, {this.height, super.key});

  const Space.vertical(this.height, {this.width, super.key});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height != null ? height! : null,
      width: width ?? null,
    );
  }
}


class SpaceWiget extends StatelessWidget {
  const SpaceWiget({Key? key,this.height,this.width ,this.marginbottom,this.margintop,this.paddingbottom,
    this.paddingtop,this.paddingleft,this.marginleft,this.marginright,this.paddingright,
    required this.widget}) : super(key: key);

final Widget widget;
  final double? height;
  final double? width;
  final double? margintop;
  final double? paddingtop;
  final double? paddingbottom;
  final double? marginbottom;
  final double? marginright;
  final double? marginleft;
  final double? paddingleft;
  final double? paddingright;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(
        top: paddingtop??0,left: paddingleft??0,bottom: paddingbottom??0,right: paddingright??0
      ),
      margin:  EdgeInsets.only(
        top: margintop??0,left: marginleft??0,bottom: marginbottom??0,right: marginright??0
      ),
      height: height?? double.maxFinite,
      width: width??  double.maxFinite,
      child: widget,
    );
  }
}




class RoundCard extends StatelessWidget {
  const RoundCard({Key? key,
    required this.width,
    required this.height,required this.image,this.radius=25.0}) : super(key: key);
  final double width,height,radius;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
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
      child:   ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: AppAssetsImages.wireGauze.svg(fit: BoxFit.cover)),
    );
  }
}



