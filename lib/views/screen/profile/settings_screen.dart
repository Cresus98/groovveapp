

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/common/widget_bar.dart';
import 'package:groovvee/views/utils/widgets/settings.dart';

import '../../../constantes.dart';
import '../../utils/app_widget.dart';
import '../../utils/widgets/common/app_scaffold.dart';
import '../../utils/widgets/common/dark_mode_switch.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  static const routeName = 'settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    //final user = ref.watch(authViewModel.select((state) => state.currentUser));

    final headingStyle = context.textStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    );

  //  final localizations = context.l10n;

    return GauzyScaffold(
      overlayStyle: context.defaultSystemUiOverlayStyle.copyWith(
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor:
            context.isInDarkMode ? AppColor.webOrange : AppColor.raisinBlack,
      ),
      content: SafeArea(
        child: SingleChildScrollView(
          physics: bouncingScrollPhysics,
          padding: EdgeInsets.symmetric(
            horizontal: context.dx(16.0),
            vertical: context.dy(20.0),
          ),
          child: Column(
            children: [
              Header(title: AppString.settings),
              const Space.vertical(40.0),
              Container(
                width: context.dx(128.0),
                height: context.dx(128.0),
                padding: EdgeInsets.all(context.dx(4.0)),
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: !context.isInDarkMode
                          ? AppColor.raisinBlack
                          : AppColor.webOrange,
                      width: 4,
                    ),
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/sample_profile_picture.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const Space.vertical(20.0),
              Text(
                //'${user.firstName} ${user.lastName}',
                '${"Jane"} ${"Cooper"}',
                style: context.textStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
              Text(

                'janecooper@gmail.com',
               // user.emailAddress,
                style: context.textStyle(
                  colour: AppColor.sonicSilver,
                  fontWeight: FontWeight.w500,
                  fontSize: 8.0,
                ),
              ),
              const Space.vertical(28.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppString.changePersonalInfo, style: headingStyle),
                  const Space.vertical(20.0),
                  SettingsTile(subject: AppString.changePassword),
                  SettingsTile(subject: AppString.changeLocation),
                  SettingsTile(subject: AppString.changeName),
                  const Space.vertical(20.0),
                  Text(AppString.videoSettings, style: headingStyle),
                  const Space.vertical(20.0),
                  SettingsTile(subject: AppString.recentUploads),
                  SettingsTile(subject: AppString.uploadVideo),
                  const Space.vertical(20.0),
                  Text(AppString.notifications, style: headingStyle),
                  const Space.vertical(20.0),
                  SettingsTile(subject: AppString.notificationSettings),
                  const Space.vertical(20.0),
                  Text(AppString.themeMode, style: headingStyle),
                  const Space.vertical(20.0),
                  SettingsTile(
                    trailing: const DarkModeSwitch(),
                    subject: AppString.darkMode,
                  ),
                  const Space.vertical(20.0),
                  Text(AppString.language, style: headingStyle),
                  const Space.vertical(20.0),
                  SettingsTile(subject: AppString.choosePreferredLanguage),
                  const Space.vertical(20.0),
                  Text(AppString.areYouAnEnterprise, style: headingStyle),
                  const Space.vertical(20.0),
                  SettingsTile(subject: AppString.createAnAccount),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
