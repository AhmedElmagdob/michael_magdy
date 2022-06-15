import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/custom_text_field.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../helper/button.dart';
import '../../../helper/colors.dart';
import '../../../helper/space_widget.dart';
import '../../../helper/text.dart';

class StepSix extends StatefulWidget{
  const StepSix({Key? key}) : super(key: key);

  @override
  State<StepSix> createState() => _StepSixState();
}

class _StepSixState extends State<StepSix> {
  double _value = 40.0;
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Txt(
                  "Headline",
                  color: colors.blue,
                  weight: FontWeight.bold,
                ),
                const VerticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(color: colors.darkBlue,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(image: AssetImage("assets/images/containerBackground.png"))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const VerticalSpace(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                const Txt(
                                  "1",
                                  color: colors.myGrey,
                                  size: 18,
                                  weight: FontWeight.bold,
                                ),
                                Image.asset(
                                  "assets/images/evaluation.png",
                                  height: 60,width: 50,fit: BoxFit.fill,),
                              ],
                            ),
                            const Txt(
                              "Recommended Company Valuation: ",
                              color: colors.myGrey,
                              size: 12,
                              weight: FontWeight.normal,
                              textAlign: TextAlign.start,
                            ),
                            const VerticalSpace(10),
                            const Txt(
                              "600k EGP",
                              color: colors.white,
                              size: 16,
                              weight: FontWeight.bold,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(color: colors.red,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(image: AssetImage("assets/images/containerBackground.png"))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:  const [
                                Txt(
                                  "2",
                                  color: colors.myGrey,
                                  size: 18,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Txt(
                                  "Assuming your total business share is 1000 Your value share is:",
                                  color: colors.myGrey,
                                  size: 12,
                                  weight: FontWeight.normal,
                                  textAlign: TextAlign.start,
                                ),
                                VerticalSpace(10),
                                Txt(
                                  "600k EGP",
                                  color: colors.white,
                                  size: 16,
                                  weight: FontWeight.bold,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(color: colors.darkOrange,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(image: AssetImage("assets/images/containerBackground.png"))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:  const [
                                Txt(
                                  "3",
                                  color: colors.myGrey,
                                  size: 18,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Txt(
                                  "Maximum number of shares that you are eligible to offer:",
                                  color: colors.white,
                                  size: 12,
                                  weight: FontWeight.normal,
                                  textAlign: TextAlign.start,
                                ),
                                VerticalSpace(10),
                                Txt(
                                  "300 Share",
                                  color: colors.white,
                                  size: 16,
                                  weight: FontWeight.bold,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(color: colors.grey,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(image: AssetImage("assets/images/containerBackground.png"))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:  const [
                                Txt(
                                  "4",
                                  color: colors.myGrey,
                                  size: 18,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Txt(
                                  "Accordingly your total equity to be offered (number of sharesXvalue share)is:",
                                  color: colors.blue,
                                  size: 12,
                                  weight: FontWeight.normal,
                                  textAlign: TextAlign.start,
                                ),
                                VerticalSpace(10),
                                Txt(
                                  "180k EGP",
                                  color: colors.blue,
                                  size: 16,
                                  weight: FontWeight.bold,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(20),
                const Txt(
                  "Headline",
                  color: colors.black,
                  weight: FontWeight.bold,
                ),
                const VerticalSpace(20),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width * 0.92,
                  decoration: BoxDecoration(
                    color: colors.white,
                      border: Border.all(color: colors.blue),
                      borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.92,
                        padding: const EdgeInsets.only(left: 12,right: 12),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: colors.blue,
                          border: Border.all(color: colors.blue),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),
                          ),
                        ),
                        child: const Txt(
                          "Headline",
                          color: colors.white,
                          weight: FontWeight.bold,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:  MediaQuery.of(context).size.width * 0.6,
                            child: Column(
                              children: [
                                SfSlider(
                                  min: 0.0,
                                  max: 100.0,
                                  value: _value,
                                  activeColor: colors.blue,
                                  interval: 20,
                                  showTicks: false,
                                  showLabels: false,
                                  enableTooltip: true,
                                  minorTicksPerInterval: 0,
                                  onChanged: (dynamic value){
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06,right: MediaQuery.of(context).size.width * 0.06),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Txt(
                                        "text",
                                        color: colors.blue,
                                        weight: FontWeight.w600,
                                        textAlign: TextAlign.start,
                                      ),
                                      Txt(
                                        "text",
                                        color: colors.blue,
                                        weight: FontWeight.w600,
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: CustomTextField(
                              width:  MediaQuery.of(context).size.width * 0.3,
                              hint: _value.toString(),
                            ),
                          )
                        ],
                      ),
                      const VerticalSpace(5),
                      const Divider(color: colors.blue),
                      const Padding(
                        padding: EdgeInsets.only(left: 12,right: 12),
                        child: Txt(
                          "description 1 line ",
                          color: colors.black,
                          weight: FontWeight.w600,
                          size: 14,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalSpace(20),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width * 0.92,
                  decoration: BoxDecoration(
                    color: colors.white,
                    border: Border.all(color: colors.blue),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.92,
                        padding: const EdgeInsets.only(left: 12,right: 12),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: colors.blue,
                          border: Border.all(color: colors.blue),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),
                          ),
                        ),
                        child: const Txt(
                          "Headline",
                          color: colors.white,
                          weight: FontWeight.bold,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:  MediaQuery.of(context).size.width * 0.6,
                            child: Column(
                              children: [
                                SfSlider(
                                  min: 0.0,
                                  max: 100.0,
                                  value: _value,
                                  activeColor: colors.blue,
                                  interval: 20,
                                  showTicks: false,
                                  showLabels: false,
                                  enableTooltip: true,
                                  minorTicksPerInterval: 0,
                                  onChanged: (dynamic value){
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06,right: MediaQuery.of(context).size.width * 0.06),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Txt(
                                        "text",
                                        color: colors.blue,
                                        weight: FontWeight.w600,
                                        textAlign: TextAlign.start,
                                      ),
                                      Txt(
                                        "text",
                                        color: colors.blue,
                                        weight: FontWeight.w600,
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: CustomTextField(
                              width:  MediaQuery.of(context).size.width * 0.3,
                              hint: _value.toString(),
                            ),
                          )
                        ],
                      ),
                      const VerticalSpace(5),
                      const Divider(color: colors.blue),
                      const Padding(
                        padding: EdgeInsets.only(left: 12,right: 12),
                        child: Txt(
                          "description 2 line ",
                          color: colors.black,
                          weight: FontWeight.w600,
                          size: 14,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: const BoxDecoration(color: colors.darkOrange,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                          ),
                          image: DecorationImage(image: AssetImage("assets/images/containerBackground.png"))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Txt(
                              "Headline",
                              color: colors.black,
                              weight: FontWeight.w600,
                              size: 14,
                              textAlign: TextAlign.start,
                            ),
                            Txt(
                              "Headline",
                              color: colors.white,
                              weight: FontWeight.bold,
                              size: 18,
                              textAlign: TextAlign.start,
                            ),
                            ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: const BoxDecoration(color: colors.red,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(14),
                            topRight: Radius.circular(14),
                          ),
                          image: DecorationImage(image: AssetImage("assets/images/containerBackground.png"))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Txt(
                              "Headline",
                              color: colors.black,
                              weight: FontWeight.w600,
                              size: 14,
                              textAlign: TextAlign.start,
                            ),
                            Txt(
                              "Headline",
                              color: colors.white,
                              weight: FontWeight.bold,
                              size: 18,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(20),
                Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8),
                  child: LBottom(
                    title: const Txt(
                      "Text",
                      color: colors.white,
                      weight: FontWeight.bold,
                    ),
                    function: () {  },
                  ),
                ),
                const VerticalSpace(160),
              ],
            ),
          ),
        ),
      ),
    );
  }
}