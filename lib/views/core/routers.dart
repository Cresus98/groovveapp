import 'package:go_router/go_router.dart';
import 'package:groovvee/views/payment/payment_first.dart';
import 'package:groovvee/views/payment/payment_second.dart';
import 'package:groovvee/views/screen/auth/enter_verification_code.dart';
import 'package:groovvee/views/screen/auth/opt_verification.dart';
import 'package:groovvee/views/screen/auth/sign_in.dart';
import 'package:groovvee/views/screen/auth/sign_up.dart';
import 'package:groovvee/views/screen/auth/verification.dart';
import 'package:groovvee/views/screen/dashboard.dart';
import 'package:groovvee/views/screen/home_page.dart';
import 'package:groovvee/views/screen/moovies/movies_screen.dart';
import 'package:groovvee/views/screen/music/download_music.dart';
import 'package:groovvee/views/screen/music/music.dart';
import 'package:groovvee/views/screen/music/music_search.dart';
import 'package:groovvee/views/screen/music/vip_music.dart';
import 'package:groovvee/views/screen/splash_screen.dart';

import '../screen/auth/resset_password.dart';
import '../screen/profile/profile_screen.dart';
import '../screen/profile/settings_screen.dart';



final appRouter = GoRouter(
  routes: [
    GoRoute(builder: (_, __) => const SplashScreen(), path: '/'),
    GoRoute(
      builder: (_, __) => const SignInScreen(),
      path: '/${SignInScreen.routeName}',
      name: SignInScreen.routeName,
    ),
    GoRoute(
      builder: (_, __) => const SignUpScreen(),
      path: '/${SignUpScreen.routeName}',
      name: SignUpScreen.routeName,
    ),
    GoRoute(
      builder: (_, __) => const ResetPasswordScreen(),
      path: '/${ResetPasswordScreen.routeName}',
      name: ResetPasswordScreen.routeName,
    ),
    GoRoute(
      builder: (_, __) => const VerificationScreen(),
      path: '/${VerificationScreen.routeName}',
      name: VerificationScreen.routeName,
    ),
    GoRoute(
      builder: (_, __) => const OtpVerification(),
      path: '/${OtpVerification.routeName}',
      name: OtpVerification.routeName,
    ),
    GoRoute(
      builder: (_, __) => const EnterVerificationCode(),
      path: '/${EnterVerificationCode.routeName}',
      name: EnterVerificationCode.routeName,
    ),
    GoRoute(
      builder: (_, __) => const PaymentFirst(),
      path: '/${PaymentFirst.routeName}',
      name: PaymentFirst.routeName,
    ),
    GoRoute(
      builder: (_, __) => const PaymentSecond(),
      path: '/${PaymentSecond.routeName}',
      name: PaymentSecond.routeName,
    ),
    GoRoute(
      builder: (_, __) => const DashbaordScreen(),
      path: '/${DashbaordScreen.routeName}',
      name: DashbaordScreen.routeName,
    ),
    GoRoute(
      builder: (_, __) => const ProfileScreen(),
      path: '/${ProfileScreen.routeName}',
      name: ProfileScreen.routeName,
    ),
    GoRoute(
      builder: (_, __) => const SettingsScreen(),
      path: '/${SettingsScreen.routeName}',
      name: SettingsScreen.routeName,
    ),

    GoRoute(
      builder: (context, state) => const SearchScreen(),
        path: '/${SearchScreen.routeName}',
    name: SearchScreen.routeName),
    GoRoute(path: '/${VipMusic.routeName}',
    name: VipMusic.routeName,
    builder: (context, state) => const VipMusic(),),
    GoRoute(path: '/${VipSuscirbe.routeName}',
    name: VipSuscirbe.routeName,
    builder: (context, state) => const VipSuscirbe(),),
    GoRoute(path: '/${DownLoadMusic.routeName}',
    name: DownLoadMusic.routeName,
    builder: (context, state) => const DownLoadMusic(),),
    GoRoute(path: '/${ListeningMusic.routeName}',
    name: ListeningMusic.routeName,
    builder: (context, state) =>const  ListeningMusic(),),
    GoRoute(path: '/${PlayMusic.routeName}',
    name: PlayMusic.routeName,
    builder: (context, state) =>const  PlayMusic(),),
    GoRoute(path: '/${SearchMusic.routeName}',
    name: SearchMusic.routeName,
    builder: (context, state) => const SearchMusic(),),

  ],
);
