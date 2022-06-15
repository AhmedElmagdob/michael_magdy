import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/button.dart';
import 'package:michael_magdy/helper/colors.dart';
import 'package:michael_magdy/helper/custom_text_field.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:michael_magdy/ui/cart/provider.dart';
import 'package:provider/provider.dart';
class ThirdStep extends StatelessWidget {
  const ThirdStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(3),
            child: Txt('Headline',color: colors.black,weight: FontWeight.bold,),
          ),
          const Padding(
            padding: EdgeInsets.all(3),
            child: Txt('Headline',color: colors.searchBar,weight: FontWeight.bold,),
          ),
          const Padding(
            padding: EdgeInsets.all(3),
            child: Txt('Headline',color: colors.orange,weight: FontWeight.bold,),
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
          const VerticalSpace(100),
        ],
      ),
    );
  }
}
