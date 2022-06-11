import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:michael_magdy/ui/cart/provider.dart';
import 'package:provider/provider.dart';

import 'button.dart';
import 'colors.dart';

class CustomStepper extends StatefulWidget{
  const CustomStepper({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CustomStepperState();
  }
  
}
class CustomStepperState extends State<CustomStepper>{

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 85,
              child: Center(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return  Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding:ref.selectedStep == index ?  const EdgeInsets.all(2):const EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                        color: colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: ref.selectedStep > index ? Colors.green: colors.blue)
                                    ),
                                    child: Container(
                                      width: 40,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color:ref.selectedStep > index ? Colors.green: colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child:
                                        ref.selectedStep > index ? const Icon(Icons.check,size: 16,color: colors.white,):
                                        Txt(
                                          "${index + 1}",
                                          color: colors.white,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  index > 4 ? const SizedBox.shrink() :const SizedBox(width: 10, child: Divider(color: colors.red,)),
                                  const SizedBox(width: 4),
                                  const SizedBox(height: 10,),
                                ],
                              ),
                               SizedBox(height:ref.selectedStep == index ?0: 4),
                              Txt(
                                "  Step ${index + 1}",
                                color:ref.selectedStep > index ? Colors.green: colors.blue,
                                size: 12,
                                weight: FontWeight.bold,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),


                        ],
                      );
                    }
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8,left: 8),
              child: LBottom(
                title: const Txt(
                  "Text",
                  color: colors.white,
                  weight: FontWeight.bold,
                ),
                function: () {
                  ref.selectedStep > 5 ?
                  ref.onTappedRemove():
                  ref.onTappedAdd();
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
  
}