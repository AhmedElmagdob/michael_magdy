import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:michael_magdy/ui/register1/provider.dart';
import 'package:provider/provider.dart';

import 'button.dart';
import 'colors.dart';

class CustomStepper2 extends StatefulWidget {
  const CustomStepper2({Key? key}) : super(key: key);

  @override
  State<CustomStepper2> createState() => _CustomStepper2State();
}

class _CustomStepper2State extends State<CustomStepper2> {
  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    return SizedBox(
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
                            padding:ref.selectedStep2 == index ?  const EdgeInsets.all(2):const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                color: colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: ref.selectedStep2 > index ? Colors.green: colors.blue)
                            ),
                            child: Container(
                              width: 40,
                              height: 60,
                              decoration: BoxDecoration(
                                color:ref.selectedStep2 > index ? Colors.green: colors.blue,
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
                      SizedBox(height:ref.selectedStep2 == index ?0: 4),
                      Txt(
                        "  Step ${index + 1}",
                        color:ref.selectedStep2 > index ? Colors.green: colors.blue,
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
    );
  }
}
