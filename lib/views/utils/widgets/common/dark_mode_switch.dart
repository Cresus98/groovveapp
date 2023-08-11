import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_color.dart';

import '../../../../constantes.dart';
import '../../../../controller/theme_manage.dart';

class DarkModeSwitch extends ConsumerWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Switch.adaptive(
      value: context.isInDarkMode,
      thumbColor: const MaterialStatePropertyAll(white),
      trackColor: MaterialStatePropertyAll(
        context.isInDarkMode ? AppColor.webOrange : AppColor.raisinBlack,
      ),
      onChanged: (isOn) {
        // ref.read(isDarkTheme.notifier).
        // update(themeMode: isOn ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}