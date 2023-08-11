import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
  required this.subject,
  this.onSelect,
  this.trailing,
  super.key,
});

final VoidCallback? onSelect;
final Widget? trailing;

final String subject;

@override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        subject,
        style: AppTextStyles.textstyles_simple.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
          color: AppColor.white,
        ),
      ),
      trailing ??
          IconButton(
            icon: const Icon(Icons.chevron_right,
                color: AppColor.white),
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            onPressed: onSelect ?? () {},
          ),
    ],
  );
}
}