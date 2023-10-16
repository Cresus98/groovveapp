import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/models/view_model/auth/auth_view_model.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/appwidgets/common/clickable.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/auth/auth_question_bar.dart';
import 'package:groovvee/views/screen/auth/auth_text_form_field.dart';
import 'package:groovvee/views/screen/auth/resset_password.dart';
import 'package:groovvee/views/screen/auth/sign_up.dart';
import 'package:groovvee/views/screen/dashboard.dart';
import 'package:groovvee/views/screen/home_page.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';


import '../../../constantes.dart';
import '../../utils/app_widget.dart';

import '../../utils/widgets/common/buttons.dart';
import '../../utils/widgets/common/widget_bar.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  static const routeName = 'sign-in';

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  late final _formKey = GlobalKey<FormState>();

  //late final _localizations = context.l10n;

  late var _isFormValid = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _onFormChanged());
  }

  @override
  Widget build(BuildContext context) {

    final password = ref.watch(authProvider.select((state) => state.password));

    final emailAddress = ref.watch(
      authProvider.select((state) => state.emailAddress),
    );

    final isSigningIn = ref.watch(
      authProvider.select((state) => state.isSigningIn),
    );

    final auth = ref.watch(authProvider.notifier);


    return GauzyScaffold(
      content: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
          //  width: context.screenWidth,
            //height: context.screenHeight,
            child: Padding(
              padding: EdgeInsets.all(context.dx(56.0)),
              child: Form(
                key: _formKey,
                onChanged: _onFormChanged,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AuthTopBar(),
                    const Space.vertical(20.0),
                    Text(
                      '${AppString.welcome}!',
                      style: context.textStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                      ),
                    ),
                    const Space.vertical(4.0),
                    Text(
                      AppString.logInToYourAccount,
                      style: context.textStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        colour: white,
                      ),
                    ),
                    const Space.vertical(48.0),
                    AuthTextFormField(
                      preffixIcon:const  Icon(Icons.email),
                      labelText: AppString.emailAddress,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                       initialValue: emailAddress,
                      validator: (value) {
                        auth.update(emailAddress: value!.trim());
                        return value.trim().isValidEmailAddress ? null : '';
                      },
                    ),
                    const Space.vertical(16.0),
                    AuthTextFormField(
                      preffixIcon: const Icon(Icons.lock),
                      labelText: AppString.password,
                      textInputAction: TextInputAction.done,
                      shouldObscureText: true,
                      initialValue: password,
                      validator: (value) {
                        auth.update(password: value!);
                        return value.length >= 8 ? null : '';
                      },
                    ),
                    const Space.vertical(48.0),
                    BigButton(
                      labelText:AppString.login,
                      isEnabled:
                      _isFormValid,
                      onPressed:_onSignIn,
                      isBusy: isSigningIn,
                    ),

                    const Space.vertical(8.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Clickable(
                        onClick: () =>
                            context.pushNamed(ResetPasswordScreen.routeName),
                        child: Text(
                          '${AppString.forgotPassword}?',
                          style: context.textStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            colour: context.isInDarkMode?white:AppColor.raisinBlack,
                          ),
                        ),
                      ),
                    ),
                     Space.vertical(context.dy(80)),
                 Row(
                   children: [
                     Expanded(child:
                     Container(
                      // width: context.dx(133),
                       height: 2,
                       color: AppColor.white,
                     ),),
                     Padding(
                       padding:EdgeInsets.symmetric(horizontal: context.dy(10)),
                       child: Text(
                         AppString.or,
                         style: context.textStyle(
                           fontWeight: FontWeight.w600,
                           fontSize: 12.0,
                         ),
                       ),
                     ),
                     Expanded(child:
                     Container(
                       // width: context.dx(133),
                       height: 2,
                       color: AppColor.white,
                     ),),
                   ],
                 ),
                    Space.vertical(context.dy(10)),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        AppString.socialSign,
                        textAlign: TextAlign.center,
                        style: context.textStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,

                        ),
                      ),
                    ),
                    // const Spacer(),
                   SizedBox(height: context.dy(80),),
                    AuthQuestionBar(
                      onTap: () => context.pushNamed(SignUpScreen.routeName),
                      question: AppString.yetToCreateAnAccount,
                      action: AppString.signUp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onFormChanged() {

    //setState(() => _isFormValid = _formKey.currentState!.validate());
  }

  void _onSignIn() {
   context.unfocus();

   context.goNamed(DashbaordScreen.routeName);
   // context.pushNamed(HomePage.routeName);

   //   if(_formKey.currentState!.validate())
   //  {
   //
   //
   //    ref.read(authProvider.notifier).signIn().then((didSignIn) {
   //      if (didSignIn) {
   //        context.goNamed(DashbaordScreen.routeName);
   //      }
   //    });
   //
   // }
  }
}