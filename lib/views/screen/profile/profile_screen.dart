
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/profile/settings_screen.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';
import 'package:groovvee/views/utils/widgets/common/buttons.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';

import '../../utils/widgets/common/app_scaffold.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  static const routeName = 'profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final user = ref.watch(authViewModel.select((state) => state.currentUser));

    //final localizations = context.l10n;

    return GauzyScaffold(
      overlayStyle: context.defaultSystemUiOverlayStyle.copyWith(
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor:
        context.isInDarkMode ? AppColor.webOrange : AppColor.raisinBlack,
      ),
      content: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            right: context.dx(16.0),
            left: context.dx(16.0),
            top: context.dy(20.0),
          ),
          physics: bouncingScrollPhysics,
          child: Column(
            children: [
              Header(title: AppString.profile),
              const Space.vertical(40.0),
              Container(
                padding: EdgeInsets.all(context.dx(24.0)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(context.dx(480.0)),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: !context.isInDarkMode
                          ? AppColor.raisinBlack
                          : AppColor.webOrange,
                      width: 2.56,
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(context.dx(132.0)),
                 // child: Image.asset(user.pictureUrl),
                  child: Image.asset('assets/images/sample_profile_picture.png'),
                ),
              ),
              const Space.vertical(32.0),
              Text(
                '${"Jane"} ${"Cooper"}',
                style: context.textStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                ),
              ),
              Text(
                'janecooper@gmail.com',
                //user.emailAddress,
                style: context.textStyle(
                  colour: AppColor.sonicSilver,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
              const Space.vertical(32.0),
              SizedBox(
                width: context.dx(240.0),
                child: BigButton(
                  onPressed: () => context.pushNamed(SettingsScreen.routeName),
                  labelText: AppString.goToSettings,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
