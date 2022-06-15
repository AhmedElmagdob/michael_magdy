import 'package:flutter/material.dart';
import 'package:michael_magdy/ui/cart/provider.dart';
import 'package:provider/provider.dart';

import '../../helper/button.dart';
import '../../helper/colors.dart';
import '../../helper/custom_text_field.dart';
import '../../helper/space_widget.dart';
import '../../helper/text.dart';

class StepThreeOne extends StatefulWidget{
  StepThreeOne({Key? key}) : super(key: key);

  @override
  State<StepThreeOne> createState() => _StepThreeOneState();
}

class _StepThreeOneState extends State<StepThreeOne> {
 List<bool>? check  =  List<bool>.filled(4,false);

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Txt(
                  "Headline",
                  color: colors.black,
                  weight: FontWeight.bold,
                ),
                const VerticalSpace(10),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      check![index] = !check![index];
                                    });
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.green),
                                      color: check![index] ? Colors.green :Colors.white,
                                    ),
                                    child: check![index] ? const Center(child: Icon(Icons.check,color: colors.white,size: 14)):null,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Txt(
                                  "Text",
                                  color: colors.black,
                                  weight: FontWeight.w600,
                                ),
                              ],
                            ),
                            check![index]?
                            SizedBox(
                              height: 35,
                              child: CustomTextField(
                                width:  MediaQuery.of(context).size.width * 0.3,
                                label: "text",
                              ),
                            ):const SizedBox.shrink(),


                          ],
                        ),
                        const VerticalSpace(10),
                        const Divider(color: colors.black),
                      ],
                    );
                  }
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
                    function: () { ref.onTappedAdd2();
                    ref.onTap2(); },
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}