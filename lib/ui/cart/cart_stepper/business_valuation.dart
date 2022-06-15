import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/button.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:michael_magdy/ui/cart/provider.dart';
import 'package:provider/provider.dart';

import '../../../helper/colors.dart';

class BusinessValuation extends StatelessWidget{
  const BusinessValuation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                  width: MediaQuery.of(context).size.width * 0.45,
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
                  width: MediaQuery.of(context).size.width * 0.45,
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
                  width: MediaQuery.of(context).size.width * 0.45,
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
                  width: MediaQuery.of(context).size.width * 0.45,
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
            const VerticalSpace(10),
            const Txt(
              "description 2 lines",
              color: colors.blue,
              weight: FontWeight.bold,
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
                function: () { ref.onTappedAdd();
                ref.onTap(); },
              ),
            ),

          ],
        ),
      ),
    );
  }
  
}