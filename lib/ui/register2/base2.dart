
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:michael_magdy/helper/colors.dart';
import 'package:michael_magdy/helper/custom_stepper.dart';
import 'package:michael_magdy/helper/custom_stepper2.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:michael_magdy/ui/cart/cart_stepper/business_valuation.dart';
import 'package:michael_magdy/ui/cart/cart_stepper/first.dart';
import 'package:michael_magdy/ui/cart/cart_stepper/second.dart';
import 'package:michael_magdy/ui/cart/cart_stepper/step_six.dart';
import 'package:michael_magdy/ui/cart/cart_stepper/third_step.dart';
import 'package:michael_magdy/ui/cart/provider.dart';
import 'package:michael_magdy/ui/register2/business_valuation_one.dart';
import 'package:michael_magdy/ui/register2/s1.dart';
import 'package:michael_magdy/ui/register2/s2.dart';
import 'package:michael_magdy/ui/register2/step_three_one.dart';
import 'package:provider/provider.dart';


class Base2 extends StatefulWidget {
  const Base2({Key? key}) : super(key: key);

  @override
  State<Base2> createState() => _Base2State();
}

class _Base2State extends State<Base2> {
  List<String> dropDown1 = ['الرجاء اختيار الدوله اولا'];

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: colors.blue,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: colors.white,
            ),
          ),
          leadingWidth: 20,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: colors.white,
                size: 35,
              ),
            ),
            IconButton(
              padding: const EdgeInsets.only(right: 6, bottom: 6),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/message.svg",
                height: 32,
              ),
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: _appBarT(),
          ),
          // leading: _appBarT(_scaffoldKey),
        ),
        backgroundColor: colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomStepper2(),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Center(
                    child: Txt(
                      "HeadLine",
                      color: colors.black,
                      weight: FontWeight.bold,
                      size: 25,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.9,
                child: PageView(
                  controller: ref.pageController2,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    R2S1(),
                    Step2(),
                    StepThreeOne(),
                    StepThreeOne(),
                    BusinessValuationOne(),
                    StepSix(),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  //app bar//////////
  Widget _appBarT() {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: colors.white,
              )),
          child: const CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage('assets/images/face.jpg'),
          ),
        ),
        const HorizintalSpace(1.7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Txt(
              'Ahmed',
              size: 14,
              weight: FontWeight.bold,
              color: colors.white,
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/star-badge.png',
                  width: 20,
                ),
                const Txt(
                  'Tag|Tag|',
                  size: 12,
                  color: colors.white,
                  textAlign: TextAlign.left,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
