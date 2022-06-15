import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/button.dart';
import 'package:michael_magdy/helper/colors.dart';
import 'package:michael_magdy/helper/custom_text_field.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:provider/provider.dart';

import '../register1/provider.dart';
class Step2 extends StatelessWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 5),
            child: CustomTextField(hint: "text",label: "text",maxLines: 7,minLines: 7,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 5),
            child: CustomTextField(hint: "text",label: "text",maxLines: 7,minLines: 7,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 5),
            child: CustomTextField(hint: "text",label: "text",maxLines: 7,minLines: 7,),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: LBottom(
              title: Txt('Next',color: colors.white,weight: FontWeight.bold,size: 20,),
              function: (){
                ref.onTappedAdd2();
                ref.onTap2();
              },
            ),
          ),
          VerticalSpace(100)
        ],
      ),
    );
  }
}
