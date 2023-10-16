import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/space.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_const.dart';

import '../../appwidgets/common/header.dart';




class EnterVerification extends ConsumerStatefulWidget {
  const EnterVerification({Key? key}) : super(key: key);

  static const routeName='enter-verification';

  @override
  ConsumerState<EnterVerification> createState() => _EnterVerificationState();
}

class _EnterVerificationState extends ConsumerState<EnterVerification> {
  @override
  Widget build(BuildContext context) {
    return GauzyScaffold(
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
              Header(title: AppString.enterVerification),
              const Space.vertical(40.0),
            ],
          ),
        ),
      ),
    );
  }
}

