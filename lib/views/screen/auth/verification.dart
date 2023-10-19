import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/gen/colors.gen.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/app_widget.dart';
import 'package:groovvee/views/utils/fonctions.dart';


import '../../../constantes.dart';
import '../../utils/widgets/common/widget_bar.dart';


class VerificationScreen extends ConsumerStatefulWidget {
  const VerificationScreen({super.key});

  static const routeName = 'verification';

  @override
  ConsumerState<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends ConsumerState<VerificationScreen> {
  late final _listenerNodes = List.generate(codeLength, (_) => FocusNode());
  late final _fieldNodes = List.generate(codeLength, (_) => FocusNode());

  late final _digits = List.filled(codeLength, '');

  //late final _localizations = context.l10n;

  @override
  void initState() {
    super.initState();
    _fieldNodes[0].requestFocus();
    var i=0;
    for( final node in [..._listenerNodes,
    ..._fieldNodes])
    {
      i++;
      print("on dans le $i et de node ${node}");
    }
  }

  @override
  void dispose() {
    for (final node in [..._listenerNodes,
      ..._fieldNodes]) {
      node.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // final otpCode = ref.watch(authViewModel.select((state) => state.otpCode));
    //
    // final timeLeft = ref.watch(authViewModel.select((state) => state.timeLeft));
    //
    // final isResendingCode = ref.watch(
    //   authViewModel.select((state) => state.isResendingCode),
    // );
    //
    // final isVerifyingCode = ref.watch(
    //   authViewModel.select((state) => state.isVerifyingCode),
    // );

    final inputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color:
        context.isInDarkMode ?
        AppColor.webOrange :
        AppColor.raisinBlack,
      ),
    );

    // final auth = ref.watch(authViewModel.notifier);

    return GauzyScaffold(
      content: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(context.dx(56.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthTopBar(),
              const Space.vertical(32.0),
              Text(
                AppString.verification,
                style: context.textStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                ),
              ),
              const Space.vertical(4.0),
              Text(
                AppString.addOtpHere,
                style: context.textStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13.0,
                  colour: ColorName.raisinBlack,
                ),
              ),
              const Space.vertical(70.0),
              Align(
                alignment: Alignment.centerRight,
                child:
                Text(
                  AppString.procedPhoneNumber,
                  style: context.textStyle(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    fontSize: 12.0,
                    colour: ColorName.raisinBlack,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var index = 0; index < codeLength; index++)
                    SizedBox(
                      width: context.dx(52.0),
                      height: context.dx(52.0),
                      child: RawKeyboardListener(
                        focusNode: _listenerNodes[index],
                        onKey: (event) {
                          if (event.logicalKey == LogicalKeyboardKey.backspace)
                          {
                            if (_digits[index].isEmpty && index > 0) {
                              _fieldNodes[index - 1].requestFocus();
                            }
                          }
                        },
                        child: TextFormField(
                          cursorColor: black,
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                            counter: const SizedBox.shrink(),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: inputBorder,
                            focusedBorder: inputBorder,
                            isDense: true,
                          ),
                          controller:
                          TextEditingController(text: _digits[index])
                            ..selection = TextSelection.collapsed(
                              offset: _digits[index].length,
                            ),
                          focusNode: _fieldNodes[index],
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if ((_digits[index] = value).isNotEmpty
                                ? index < codeLength - 1
                                : index > 0) {
                              _fieldNodes[value.isEmpty ?
                              index - 1 : index + 1]
                                  .requestFocus();
                            } else {
                              context.unfocus();
                            }

                            if (value.isEmpty || index == codeLength - 1) {
                              //auth.update(otpCode: _digits.join());
                            }
                          },
                          style: context.textStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                          maxLength: 1,
                        ),
                      ),
                    ),
                ],
              ),
              const Space.vertical(48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: context.dx(108.0),
                    child:    Text(
                        AppString.resend_in,
                      style: context.textStyle(
                        fontSize: 10,
                          fontWeight: FontWeight.w500,
                          colour: AppColor.white),
                    ),
                  ),
                  SizedBox(
                    width: context.dx(108.0),
                    child: BigButton(
                      isEnabled: true ,
                      //otpCode.length == codeLength,
                      labelText: AppString.verify,
                      onPressed: _onVerifyCode,
                      isBusy:  false
                      //isVerifyingCode,
                    ),
                  ),
                ],
              ),
               Space.vertical(context.dy(90)),
              Align(
                child: Text(AppString.otpHasBeenSent,
                style: context.textStyle(
                    colour: AppColor.webblacktextfield),),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onVerifyCode() {
    // ref.read(authViewModel.notifier).verifyCode().then((didVerifyCode) {
    //   if (didVerifyCode) {
    //     context.goNamed(DashboardScreen.routeName);
    //   }
    // });
  }
}


