import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/auth/auth_question_bar.dart';
import 'package:groovvee/views/screen/auth/auth_text_form_field.dart';
import 'package:groovvee/views/screen/home_page.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/common/app_scaffold.dart';
import 'package:groovvee/views/utils/widgets/common/buttons.dart';

import '../../../constantes.dart';
import '../../../models/backend_model/country/country.dart';
import '../../utils/app_widget.dart';
import '../../utils/widgets/common/widget_bar.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  static const routeName = 'sign-up';

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  late final _countryEditor = TextEditingController(text:  Country(name: "Nigeria",code: "NG").name);


  late final _formKey = GlobalKey<FormState>();

 // late final _localizations = context.l10n;

  late var _isFormValid =true;
  late var _password = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _onFormChanged());
  }

  @override
  void dispose() {
    super.dispose();
    _countryEditor.dispose();
  }

  @override
  Widget build(BuildContext context) {

    /*
    final password = ref.watch(authViewModel.select((state) => state.password));

    final lastName = ref.watch(authViewModel.select((state) => state.lastName));

    final countries = ref.watch(
      authViewModel.select((state) => state.countries),
    );

    final emailAddress = ref.watch(
      authViewModel.select((state) => state.emailAddress),
    );

    final isSigningUp = ref.watch(
      authViewModel.select((state) => state.isSigningUp),
    );

    final firstName = ref.watch(
      authViewModel.select((state) => state.firstName),
    );

    final auth = ref.watch(authViewModel.notifier);
*/
    return GauzyScaffold(
      shouldResize: true,
      content: SafeArea(
        child: SingleChildScrollView(
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
                  '${AppString.hi}!',
                  style: context.textStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30.0,
                  ),
                ),
                const Space.vertical(4.0),
                Text(
                  AppString.createYourAccount,
                  style: context.textStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    colour: white,
                  ),
                ),
                const Space.vertical(48.0),
                Row(
                  children: [
                    Expanded(
                      child: AuthTextFormField(
                        labelText:AppString.firstName,
                        textInputAction: TextInputAction.next,
                        //initialValue: firstName,
                        validator: (value) {
                          //auth.update(firstName: value!.trim());
                          return value!.trim().length >= 3 ? null : '';
                        },
                      ),
                    ),
                    const Space.horizontal(24.0),
                    Expanded(
                      child: AuthTextFormField(
                        labelText: AppString.lastName,
                        textInputAction: TextInputAction.next,
                        /*initialValue: lastName,
                        validator: (value) {
                          auth.update(lastName: value!.trim());
                          return value.trim().length >= 3 ? null : '';
                        },*/
                      ),
                    ),
                  ],
                ),
                const Space.vertical(16.0),
                AuthTextFormField(
                  labelText: AppString.emailAddress,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  /*
                    initialValue: emailAddress,
                  validator: (value) {
                    auth.update(emailAddress: value!.trim());
                    return value.trim().isValidEmailAddress ? null : '';
                  },
                  */
                ),
                const Space.vertical(16.0),
                /*
                TypeAheadFormField<Country>(
                  textFieldConfiguration: TextFieldConfiguration(
                    style: context.textStyle(fontWeight: FontWeight.bold),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      counter: const SizedBox.shrink(),
                      labelText: AppString.country,
                      errorStyle: context.textStyle(height: 0.0),
                      labelStyle:
                      context.textStyle(fontWeight: FontWeight.w500),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.isInDarkMode
                              ? AppColor.webOrange
                              : AppColor.raisinBlack,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.isInDarkMode
                              ? AppColor.webOrange
                              : AppColor.raisinBlack,
                          width: 1.0,
                        ),
                      ),
                    ),
                    controller: _countryEditor,
                  ),
                  minCharsForSuggestions: 1,
                  getImmediateSuggestions: true,
                  debounceDuration: Duration.zero,
                  suggestionsCallback: (str) => countries.where(
                        (obj) => obj.name.toLowerCase().contains(str.toLowerCase()),
                  ),
                  onSuggestionSelected: (country) {
                    auth.update(countryCode: country.code);
                    _countryEditor
                      ..text = country.name
                      ..selection = TextSelection.collapsed(
                        offset: country.name.length,
                      );
                  },
                  noItemsFoundBuilder: (_) => const SizedBox.shrink(),
                  itemBuilder: (_, country) => ListTile(
                    dense: true,
                    title: Text(
                      country.name,
                      style: context.textStyle(fontSize: 16.0),
                    ),
                  ),
                ),
                */
                const Space.vertical(16.0),
                AuthTextFormField(
                  labelText: AppString.password,
                  textInputAction: TextInputAction.next,
                  shouldObscureText: true,
                  /*
                    initialValue: password,
                  validator: (value) {
                    auth.update(password: value!);
                    return value.length >= 8 ? null : '';
                  },
                  */
                ),
                const Space.vertical(16.0),
                AuthTextFormField(
                  labelText: AppString.confirmPassword,
                  shouldObscureText: true,
                  // initialValue: _password,
                  // validator: (value) {
                  //   setState(() => _password = value!);
                  //   return _password == password && password.length >= 8
                  //       ? null
                  //       : '';
                  // },
                ),
                const Space.vertical(48.0),
                BigButton(
                  labelText: AppString.signUp,
                  isEnabled: _isFormValid,
                  onPressed: _onSignUp,
                  //isBusy: isSigningUp,
                ),
                const Space.vertical(64.0),
                AuthQuestionBar(
                  question: AppString.alreadyHaveAnAccount,
                  action: AppString.signIn,
                  onTap: context.pop,
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

  void _onSignUp() {

    //context.unfocus();
    context.pushNamed(HomePage.routeName);
    // ref.read(authViewModel.notifier).signUp().then((didSignUp) {
    //   if (didSignUp) {
    //     context.pop();
    //   }
    // });
  }
}