

import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/controller/theme_manage.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/payment/payment_first.dart';
import 'package:groovvee/views/screen/auth/sign_in.dart';
import 'package:groovvee/views/screen/dashboard.dart';
import 'package:groovvee/views/screen/home_page.dart';
import 'package:groovvee/views/utils/app_const.dart';


import '../../controller/initialise.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return
      GauzyScaffold(
        content: Center(
          child: (
              context.isInDarkMode
              ? AppAssetsImages.logoDark
              : AppAssetsImages.logo)
              .svg()
              .animate(delay: 2000.milliseconds)
              .scale(
            duration: 1000.milliseconds,
            begin: const Offset(0.5, 0.5),
            curve: Curves.bounceOut,
          )
              .callback(
            callback: (_) =>

                context.goNamed(
                interne_storage.read(accessTokenKey)==null
                    ? PaymentFirst.routeName
                    :SignInScreen.routeName
            //HomePage.routeName
                //DashbaordScreen.routeName
                    // ? HomePage.routeName
                    // : SignInScreen.routeName
            ),
          ),
        ),
      );

    /*
      GauzyScaffold(

      //content: Container(),

      content: Center(
        child: (ref.watch(isDarkTheme)
            ? AppAssetsImages.logoDark
            : AppAssetsImages.logo)
            .svg()
            .animate(delay: 2000.milliseconds)
            .scale(
          duration: 1000.milliseconds,
          begin: const Offset(0.5, 0.5),
          curve: Curves.bounceOut,
        )
            .callback(
          callback: (_) => context.goNamed(
              interne_storage.read(getstorageUser)==null
                ? HomePage.routeName
                : SignInScreen.routeName,
          ),
        ),
      ),

    )
    */

  }
}