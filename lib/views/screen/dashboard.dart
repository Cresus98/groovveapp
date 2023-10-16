

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:groovvee/models/view_model/dashboard/dashboardmodel.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/svg_button.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/home_page.dart';
import 'package:groovvee/views/screen/moovies/movies_screen.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';


class DashbaordScreen extends ConsumerStatefulWidget {
  const DashbaordScreen({Key ?key}) : super(key: key);

  static const routeName = 'dashpage';

  @override
  ConsumerState createState() => _DashbaordScreenState();
}

class _DashbaordScreenState extends ConsumerState<DashbaordScreen> {

  final tabIcons = [AppAssetsImages.home, AppAssetsImages.movies];

  @override
  Widget build(BuildContext context) {

    final bottomColour =
    context.isInDarkMode ? AppColor.webOrange : AppColor.raisinBlack;

    final dash=ref.watch(dashboardStateProvider.notifier);
    final tabIndex=ref.watch(dashboardStateProvider.select((value) => value.index));



    return GauzyScaffold(
      shouldExtendBody: true,
      content: SafeArea(
        child: IndexedStack(
          index: tabIndex,
          sizing: StackFit.expand,
          children: const [MusicHomePage(), MoviesScreen()],
        ),
      ),
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

                        dash.update(index: index);
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
    );
  }
}

