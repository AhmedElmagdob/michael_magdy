import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:michael_magdy/helper/button.dart';
import 'package:michael_magdy/helper/colors.dart';
import 'package:michael_magdy/helper/custom_text_field.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/helper/text.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int steps = 6;
  final pageController = PageController();
  int initialPage = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
          (timeStamp) {
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: colors.blue,
        leading: IconButton(
          onPressed: (){
          },
          icon: const Icon(Icons.menu,color: colors.white,),
        ),
        leadingWidth: 20,
        actions: [
          IconButton(
            onPressed: (){
            },
            icon: const Icon(Icons.search_rounded,color: colors.white,size: 35,),
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 6,bottom: 6),
            onPressed: (){
            },
            icon:SvgPicture.asset(
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
      body:
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child:  Center(child: Txt("HeadLine",color: colors.black,weight: FontWeight.bold,size: 25,)),
            ),
            FullLinearStepIndicator(
              steps: steps,
              lineHeight: 2,
              iconSize: 10,
              activeNodeColor: colors.blue,
              inActiveNodeColor: const Color(0xffd1d5d8),
              activeLineColor: colors.orange,
              inActiveLineColor: colors.orange,
              controller: pageController,
              labels: List<String>.generate(steps, (index) => "Step ${index + 1}"),
              complete: () {
                //typically, you'd want to put logic that returns true when all the steps
                //are completed here
                return Future.value(true);
              },
            ),
             Padding(
                padding: const EdgeInsets.only(left: 9,right: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Txt('Headline \nDescription 1 line',color: colors.black,
                  size: 15,textAlign: TextAlign.start,weight: FontWeight.bold,),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 5),
              child: CustomTextField(hint: "text",label: "text",),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
              child: CustomTextField(hint: "text",label: "text",),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
              child: CustomTextField(hint: "text",label: "text",),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: LBottom(
                title: Txt('Next',color: colors.white,weight: FontWeight.bold,size: 20,),
                function: (){},
              ),
            ),

          ],
        ),

    );
  }

  //app bar//////////
  Widget _appBarT(){
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: colors.white,
              )
          ),
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
                Image.asset('assets/icons/star-badge.png',width: 20,),
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
