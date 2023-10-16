


import 'package:flutter/material.dart';
import 'package:groovvee/views/utils/app_color.dart';
import 'package:groovvee/views/utils/widgets/app_textstyles.dart';

/*
show_alert_choose_person(BuildContext context, Color colors) => showDialog(
  context: context,
  builder: (context) => AlertDialog(
    actions: [
      TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Annuler",
            style: AppTextStyles.textstyles_simple
                .copyWith(color: colors, fontSize: 18),
          )),
      TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Ok",
            style: AppTextStyles.textstyles_simple
                .copyWith(color: colors, fontSize: 18),
          )),
    ],
    title: Container(
      height: 50,
      padding: const EdgeInsets.only(left: 3),
      alignment: Alignment.centerLeft,
      decoration:const  BoxDecoration(
          border: Border.symmetric(
              horizontal:
              BorderSide(color: AppColor.grey, width: 1))),
      child: Text(
        "Choose Country",
        style:AppTextStyles.textstyles_simple
            .copyWith(color: colors, fontSize: 17),
      ),
    ),
    backgroundColor: AppColor.white,
    content: Container(
      alignment: Alignment.centerLeft,
      height: 150,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: AppColor.greyOpac, width: 1))),
      // width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Consumer<ChooseMaking>(
        builder: (context, value, child) =>
        // child:
        ListView.builder(
          itemCount: types_personnes_list.length,
          itemBuilder: (context, index) {
            return RadioListTile(
              activeColor: AppColor.blue,
              title: Text(types_personnes_list[index]),
              value: index,
              groupValue: value.groupval1,
              onChanged: (val) {
                value.change_value(val as int, 1);
                groupValue1 = val;
              },
            );
          },
        ),
      ),
    ),
    contentPadding: const EdgeInsets.all(5),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2))),
  ),
);

*/