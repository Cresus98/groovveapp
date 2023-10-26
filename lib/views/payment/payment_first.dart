import 'package:flutter/material.dart';
import 'package:groovvee/gen/colors.gen.dart';
import 'package:groovvee/views/appwidgets/common/app_scaffold.dart';
import 'package:groovvee/views/appwidgets/common/big_button.dart';
import 'package:groovvee/views/appwidgets/common/space.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/widgets/common/common_header.dart';
import 'package:groovvee/views/utils/widgets/common/payment/form_field.dart';


class PaymentFirst extends StatefulWidget {
  const PaymentFirst({Key? key}) : super(key: key);
static const routeName='payment-fisrt';
  @override
  _PaymentFirstState createState() => _PaymentFirstState();
}

class _PaymentFirstState extends State<PaymentFirst> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonHeader(title: AppString.paymentDetails,style: context.textStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28
                ),),
                Space.vertical(context.dy(50)),
                Text(AppString.emailAddress),
                Space.vertical(context.dy(10)),
                FormFieldPayment(
                  filled: true,
                ),
                Space.vertical(context.dy(40)),
                Text(AppString.creditCard),
                Space.vertical(context.dy(10)),
                FormFieldPayment(
                  filled: true,
                ),
                Space.vertical(context.dy(40)),
                Row(
                  children: [
                    Flexible(child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.expiry),
                        Space.vertical(context.dy(10)),
                        FormFieldPayment(
                          filled: true,
                        ),
                      ],
                    )),
                    Space.horizontal(context.dx(15)),
                    Flexible(child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.cvv),
                        Space.vertical(context.dy(20)),
                        FormFieldPayment(
                          filled: true,
                        ),
                      ],
                    )),
                  ],
                ),
                Space.vertical(context.dy(100)),
                Container(height:context.dy(200),
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
                    Text(AppString.pay_demd,style: context.textStyle(fontWeight: FontWeight.w700,fontSize:25,
                    colour: ColorName.webwhite),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BigButton(
                          labelText: "Change",
                          onPressed: (){}),
                    )
                  ],
                ),),
                Space.vertical(context.dy(100)),
                BigButton(
                    labelText: AppString.cmplt_payment, onPressed: (){})
              ],
            ),
          ),

        ),
      ),
    );
  }
}
