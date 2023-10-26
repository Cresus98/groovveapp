import 'package:flutter/material.dart';
import 'package:groovvee/gen/colors.gen.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/appwidgets/common/space.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/common/common_header.dart';
import 'package:groovvee/views/utils/widgets/common/payment/form_field.dart';


class PaymentSecond extends StatefulWidget {
  const PaymentSecond({Key? key}) : super(key: key);
static const routeName="payment-second";
  @override
  _PaymentSecondState createState() => _PaymentSecondState();
}

class _PaymentSecondState extends State<PaymentSecond> {
  @override
  Widget build(BuildContext context) {
    return GauzyScaffold(
      content: SafeArea(
        child: SizedBox(
          width: context.screenWidth,
          height: double.maxFinite,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonHeader(title: "Cards",style: context.textStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  colour: ColorName.raisinBlack
                ),),
                Space.vertical(context.dy(100)),
                Text(AppString.emailAddress),
                Space.vertical(context.dy(20)),
                FormFieldPayment(),
                Space.vertical(context.dy(75)),
                Text(AppString.creditCard),
                Space.vertical(context.dy(20)),
                FormFieldPayment(),
                Space.vertical(context.dy(75)),
                Row(
                  children: [
                    Flexible(child:
                    Column(
                      children: [
                        Text(AppString.expiry),
                        Space.vertical(context.dy(20)),
                        FormFieldPayment(),
                      ],
                    )),
                    Space.horizontal(context.dx(15)),
                    Flexible(child:
                    Column(
                      children: [
                        Text(AppString.cvv),
                        Space.vertical(context.dy(20)),
                        FormFieldPayment(),
                      ],
                    )),
                  ],
                ),
                Space.vertical(context.dy(150)),
                Container(height:context.dy(175),
                  decoration: BoxDecoration(
                      color: ColorName.raisinBlack,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppString.pref_plan,style: context.textStyle(fontWeight: FontWeight.w700,
                          fontSize: 22,
                          colour: ColorName.webOrange),),
                      Space.vertical(context.dy(40)),
                      Text(AppString.pay_demd,style: context.textStyle(fontWeight: FontWeight.w700,fontSize:25),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: BigButton(
                            labelText: "Change",
                            onPressed: (){}),
                      )
                    ],
                  ),),
                Space.vertical(context.dy(200)),
                BigButton(labelText: AppString.cmplt_payment, onPressed: (){})
              ],
            ),
          ),

        ),
      ),
    );
  }
}
