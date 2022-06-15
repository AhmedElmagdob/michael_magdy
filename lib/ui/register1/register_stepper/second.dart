import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/custom_text_field.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/ui/register1/provider.dart';

import 'package:provider/provider.dart';

import '../../../helper/button.dart';
import '../../../helper/colors.dart';
import '../../../helper/text.dart';
class AboutStartup extends StatelessWidget {
  const AboutStartup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9,right: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Txt('Headline \nDescription 1 line',color: colors.black,
                  size: 15,textAlign: TextAlign.start,weight: FontWeight.bold,),
              ],
            ),
          ),
    Padding(
    padding: const EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 5),
    child: CustomTextField(hint: "text",minLines: 20,maxLines: 20,textAlignVertical:TextAlignVertical.top),
    ),
    Padding(
            padding: const EdgeInsets.all(12),
            child: LBottom(
              title: Txt('Next',color: colors.white,weight: FontWeight.bold,size: 20,),
              function: (){
                ref.onTappedAdd();
                ref.onTap();
              },
            ),
          ),
          const VerticalSpace(70),
        ],
      ),
    );
  }
}
