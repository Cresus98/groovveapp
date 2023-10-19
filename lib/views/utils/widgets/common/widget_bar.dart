
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/views/appwidgets/common/clickable.dart';
import 'package:groovvee/views/appwidgets/common/svg_button.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/music/vip_music.dart';
import 'package:groovvee/views/screen/profile/profile_screen.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/widgets/common/dark_mode_switch.dart';


import '../../../screen/profile/settings_screen.dart';

class Header extends StatelessWidget {
  const Header(
      {required this.title,
      this.icon = Icons.volume_down,
      this.icons = Icons.queue_music,
      this.row = false,
      super.key});

  final String title;
  final bool row;
  final IconData icon, icons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          if (context.canPop())
            SvgButton(
              onTap: () => context.pop(),
              asset: AppAssetsImages.backArrow,
              filterColour: !context.isInDarkMode
                  ? AppColor.webOrange
                  : AppColor.raisinBlack,
              height: context.dx(40.0),
              width: context.dx(40.0),
            ),
          Center(
            child: row
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                      ),
                      Icon(
                        icon,
                        color: context.isInDarkMode
                            ? AppColor.white
                            : AppColor.raisinBlack,
                      )
                    ],
                  )
                : Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
          ),
          if (row)
            Positioned(
                right: 10,
                child: Icon(
                  icons,
                  color: context.isInDarkMode
                      ? AppColor.white
                      : AppColor.raisinBlack,
                ))
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      child: Row(
        children: [
          (context.isInDarkMode
                  ? AppAssetsImages.bannerDark
                  : AppAssetsImages.banner)
              .svg(
            height: context.dy(38.0),
            width: context.dx(114.0),
          ),
          const Spacer(),
          const Space.horizontal(12.0),
          Clickable(
            onClick: () => context.pushNamed(VipMusic.routeName),
            child: (context.isInDarkMode
                    ? AppAssetsImages.liveDark
                    : AppAssetsImages.live)
                .image(
              height: 24.0,
              width: 24.0,
            ),
          ),
          const Space.horizontal(12.0),
          SvgButton(
            asset: AppAssetsImages.bell,
            height: 24.0,
            width: 24.0,
            onTap: () {},
          ),
          const Space.horizontal(12.0),
          SvgButton(
            onTap: () => context.pushNamed(ProfileScreen.routeName),
            asset: AppAssetsImages.profile,
            height: 24.0,
            width: 24.0,
          ),
          const Space.horizontal(12.0),
          SvgButton(
            onTap: () => context.pushNamed(SettingsScreen.routeName),
            asset: AppAssetsImages.settings,
            height: 24.0,
            width: 24.0,
          ),
        ],
      ),
    );
  }
}

final shadow = [
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
];

/*
class AuthTopBar extends ConsumerWidget {
  const AuthTopBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        context.canPop()
            ? IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: context.dx(32.0),
            color: context.isInDarkMode
                ? AppColor.webOrange
                : AppColor.raisinBlack,
          ),
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          tooltip: context.l10n.back,
          padding: EdgeInsets.zero,
          onPressed: context.pop,
        )
            : const SizedBox.shrink(),
        const DarkModeSwitch(),
      ],
    );
  }
}
*/


class AuthTopBar extends ConsumerWidget {
  const AuthTopBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        context.canPop()
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: context.dx(32.0),
                  color: context.isInDarkMode
                      ? AppColor.webOrange
                      : AppColor.raisinBlack,
                ),
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                tooltip: AppString.back,
                padding: EdgeInsets.zero,
                onPressed: context.pop,
              )
            : const SizedBox.shrink(),
        const DarkModeSwitch(),
      ],
    );
  }
}



class AuthTopBarSecond extends ConsumerWidget {
  const AuthTopBarSecond ({super.key,required this.title});

  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

             IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: context.dx(32.0),
            color: context.isInDarkMode
                ? AppColor.webOrange
                : AppColor.raisinBlack,
          ),
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          tooltip: AppString.back,
          padding: EdgeInsets.zero,
          onPressed: context.pop,
        )
           ,
        Text(title,style: context.textStyle(
          fontSize:19 ,
          fontWeight: FontWeight.w600
        ),),
        const DarkModeSwitch(),
      ],
    );
  }
}

