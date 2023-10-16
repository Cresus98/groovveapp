import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_const.dart';

class OtpVerification extends ConsumerStatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  ConsumerState<OtpVerification>createState() => _OtpVerificationState();
}

class _OtpVerificationState extends ConsumerState<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return GauzyScaffold(
      content: SafeArea(
        child: SizedBox(
          height: context.screenHeight,
          width: context.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              BigButton(
                  labelText: AppString.resend,
                  onPressed: () {

                  },)
            ],
          ),
        ),
      ),
    );
  }
}
