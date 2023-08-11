import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/auth/auth_question_bar.dart';
import 'package:groovvee/views/screen/auth/auth_text_form_field.dart';
import 'package:groovvee/views/screen/auth/resset_password.dart';
import 'package:groovvee/views/screen/auth/sign_up.dart';
import 'package:groovvee/views/screen/home_page.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';

import '../../../constantes.dart';
import '../../utils/app_widget.dart';
import '../../utils/widgets/common/app_scaffold.dart';
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
    /*
    final password = ref.watch(authViewModel.select((state) => state.password));

    final emailAddress = ref.watch(
      authViewModel.select((state) => state.emailAddress),
    );

    final isSigningIn = ref.watch(
      authViewModel.select((state) => state.isSigningIn),
    );

    final auth = ref.watch(authViewModel.notifier);
    */

    return GauzyScaffold(
      content: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(context.dx(56.0)),
          child: Form(
            key: _formKey,
            onChanged: _onFormChanged,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AuthTopBar(),
                const Space.vertical(32.0),
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
                  labelText: AppString.emailAddress,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  //initialValue: emailAddress,
                  validator: (value) {
                    //auth.update(emailAddress: value!.trim());
                    return value!.trim().isValidEmailAddress ? null : '';
                  },
                ),
                const Space.vertical(16.0),
                AuthTextFormField(
                  labelText: AppString.password,
                  shouldObscureText: true,
                  //initialValue: password,
                  validator: (value) {
                    //auth.update(password: value!);
                    return value!.length >= 8 ? null : '';
                  },
                ),
                const Space.vertical(48.0),
                BigButton(
                  labelText:AppString.signIn,
                  isEnabled:
                  _isFormValid,
                  onPressed:_onSignIn,
                  //isBusy: isSigningIn,
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
                        colour: white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
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
    );
  }

  void _onFormChanged() {
    //setState(() => _isFormValid = _formKey.currentState!.validate());
  }

  void _onSignIn() {
    //context.unfocus();
    context.pushNamed(HomePage.routeName);

    /*
    ref.read(authViewModel.notifier).signIn().then((didSignIn) {
      if (didSignIn) {
        context.goNamed(DashboardScreen.routeName);
      }
    });
    */
  }
}