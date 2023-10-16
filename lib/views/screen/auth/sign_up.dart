import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:groovvee/models/view_model/auth/auth_view_model.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/screen/auth/auth_question_bar.dart';
import 'package:groovvee/views/screen/auth/auth_text_form_field.dart';
import 'package:groovvee/views/screen/dashboard.dart';

import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';



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
  late final _countryEditor =
      TextEditingController(text: Country().name);
  late var _password = '';

  late final _formKey = GlobalKey<FormState>();

  // late final _localizations = context.l10n;

  late var _isFormValid = true;
  final  TextEditingController country =TextEditingController();

  @override
  void initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => _onFormChanged());
  }

  @override
  void dispose() {
    super.dispose();
    _countryEditor.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final textColour = context.isInDarkMode ? AppColor.webOrange : AppColor.raisinBlack;


    final password = ref.watch(authProvider.select((state) => state.password));

    final lastName = ref.watch(authProvider.select((state) => state.lastName));

    final countries = ref.watch(
      authProvider.select((state) => state.countries),
    );
    final countrieschose=ref.watch(authProvider.select((value) => value.countrieschose));

    final emailAddress = ref.watch(
      authProvider.select((state) => state.emailAddress),
    );

    //final show_you = ref.watch(authProvider.select((value) => value.showBar));

    final isSigningUp = ref.watch(
      authProvider.select((state) => state.isSigningUp),
    );

    final firstName = ref.watch(
      authProvider.select((state) => state.firstName),
    );

    final auth = ref.watch(authProvider.notifier);


    return GauzyScaffold(
      shouldResize: true,
      content: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(context.dx(56.0)),
          child: Form(
              key: _formKey,
             // onChanged: _onFormChanged,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AuthTopBar(),
                      const Space.vertical(32.0),

                      Text(
                        '${AppString.hi}!',
                        style: context.textStyle(
                          fontWeight:
                          FontWeight.w600,
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
                              labelText: AppString.firstName,
                              textInputAction: TextInputAction.next,
                              initialValue: firstName,
                              validator: (value) {
                                auth.update(firstName: value!.trim());
                                return value.trim().length >= 3 ? null : '';
                              },
                            ),
                          ),
                          const Space.horizontal(24.0),
                          Expanded(
                            child: AuthTextFormField(
                              labelText: AppString.lastName,
                              textInputAction: TextInputAction.next,
                              initialValue: lastName,
                              validator: (value) {
                                auth.update(lastName: value!.trim());
                                return value.trim().length >= 3 ? null : '';
                              },
                            ),
                          ),
                        ],
                      ),
                      const Space.vertical(16.0),
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
                     // const Space.vertical(16.0),
                      // TextFormField(
                      //   style: context.textStyle(fontWeight: FontWeight.bold),
                      //   textInputAction: TextInputAction.next,
                      //   controller: _countryEditor,
                      //   decoration: InputDecoration(
                      //     counter: const SizedBox.shrink(),
                      //     errorStyle: context.textStyle(height: 0.0),
                      //     labelStyle:
                      //         context.textStyle(fontWeight: FontWeight.w500),
                      //     floatingLabelBehavior: FloatingLabelBehavior.always,
                      //     focusedErrorBorder: UnderlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: textColour, width: 2.0),
                      //     ),
                      //     focusedBorder: UnderlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: textColour, width: 1.0),
                      //     ),
                      //     enabledBorder: UnderlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: textColour, width: 1.0),
                      //     ),
                      //     errorBorder: const UnderlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: Colors.red, width: 1.0),
                      //     ),
                      //     labelText: AppString.country,
                      //   ),
                      //   keyboardType: TextInputType.text,
                      //   onChanged: (value) {
                      //     auth.update(
                      //         countrieschose: countries
                      //             .where((obj) => obj.name.toLowerCase().
                      //         contains(value.toLowerCase())).toList());
                      //
                      //   },
                      //   validator: (value) {
                      //     //auth.update(co: value!.trim());
                      //     return value!.trim().isNotEmpty? null : '';
                      //   },
                      //   cursorColor: context.isInDarkMode
                      //       ? AppColor.webOrange
                      //       : AppColor.raisinBlack,
                      // ),
                      // const Space.vertical(16.0),
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
                      const Space.vertical(16.0),

                      // AuthTextFormField(
                      //   labelText: AppString.confirmPassword,
                      //   shouldObscureText: true,
                      //   initialValue: _password,
                      //   validator: (value) {
                      //     setState(() => _password = value!);
                      //     return _password == password && password.length >= 8
                      //         ? null
                      //         : '';
                      //   },
                      // ),

                      const Space.vertical(48.0),

                      BigButton(
                        labelText: AppString.signUp,
                        isEnabled: _isFormValid,
                        onPressed: _onSignUp,
                        isBusy: isSigningUp,
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
                        action: AppString.signIn,
                      ),

                    ],
                  ),

                  // if (countrieschose.isNotEmpty)
                  //   Positioned(
                  //     bottom: context.dy(330),
                  //     child: Container(
                  //       height: countrieschose.isNotEmpty?70:0,
                  //       width: context.screenWidth,
                  //       color: context.isInDarkMode
                  //           ? AppColor.webOrange
                  //           : AppColor.raisinBlack,
                  //       child: ListView.builder(
                  //         padding: const EdgeInsets.all(5),
                  //         itemCount: countrieschose.length,
                  //         itemBuilder: (context, index) => Padding(
                  //           padding: const EdgeInsets.all(2),
                  //           child: InkWell(
                  //             onTap:() {
                  //              // auth.update(showBar: false);
                  //               if(countrieschose.isNotEmpty)auth.update(countryCode: countrieschose[index].code,countrieschose: []);
                  //               _countryEditor.text=countrieschose[index].name;
                  //               _countryEditor..text = countrieschose[index].name
                  //                      ..selection = TextSelection.collapsed(
                  //                        offset: countrieschose[index].name.length);
                  //             },
                  //             child: Text(
                  //               countrieschose[index].name,
                  //               style: context.textStyle(
                  //                   colour: context.isInDarkMode
                  //                       ? AppColor.raisinBlack
                  //                       : AppColor.webOrange),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   )

                ],
              )),
        ),
      ),
    );
  }


  // void _onFormChanged() {
  //   setState(() => _isFormValid = _formKey.currentState!.validate());
  // }


  void _onSignUp() {
    context.unfocus();




    if(_formKey.currentState!.validate())
    {

      context.goNamed(DashbaordScreen.routeName);

        // ref.read(authProvider.notifier).signUp().then((didSignUp) {
        //  if (didSignUp) {
        //          context.replaceNamed(HomePage.routeName);
        //   }
        // });
    }


    print("ok");
    //context.pushNamed(HomePage.routeName);

  }
}
