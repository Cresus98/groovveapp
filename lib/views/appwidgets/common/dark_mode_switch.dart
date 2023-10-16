import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/controller/initialise.dart';
import 'package:groovvee/views/core/extensions.dart';

import '../../../../gen/colors.gen.dart';


class DarkModeSwitch extends ConsumerWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Switch.adaptive(
      value: context.isInDarkMode,
      thumbColor: const MaterialStatePropertyAll(white),
      trackColor: MaterialStatePropertyAll(
        context.isInDarkMode ? ColorName.webOrange : ColorName.raisinBlack,
      ),
      onChanged: (isOn) {
        ref
            .read(settingsModel.notifier)
            .update(themeMode: isOn ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}
