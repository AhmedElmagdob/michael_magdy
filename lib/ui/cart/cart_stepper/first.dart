import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:michael_magdy/helper/button.dart';
import 'package:michael_magdy/helper/colors.dart';
import 'package:michael_magdy/helper/custom_text_field.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:michael_magdy/ui/cart/provider.dart';
import 'package:provider/provider.dart';
class R1S1 extends StatelessWidget {
  const R1S1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ref = Provider.of<SelectedStepProvider>(context);
    List<String> dropDown1 = ['asdas'];
    return ListView(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
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
          padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
          child: CustomTextField(hint: "text",label: "text",),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
          child: CustomTextField(hint: "text",label: "text",),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width*0.45,
                // margin: EdgeInsets.all(20),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      fillColor: colors.white,
                      focusColor: colors.white,
                      filled: true,
                      focusedBorder: InputBorder.none,
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color:colors.blue, width: 1),
                      ),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.redAccent,
                    ),
                    isExpanded: true,
                    hint: Text(
                      'text :',
                      style: GoogleFonts.cairo(fontSize: 14),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: colors.blue,
                    ),
                    iconSize: 30,
                    buttonHeight: 50,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    // dropdownDecoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(15),
                    // ),
                    items: dropDown1
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: GoogleFonts.cairo(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return '1.';
                      }
                    },
                    onChanged: (value) {
                      // dropdownCity = value.toString();
                    },
                    onSaved: (value) {

                    },
                  ),
                ),
              ),
              SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width*0.45,
                // margin: EdgeInsets.all(20),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      fillColor: colors.white,
                      focusColor: colors.white,
                      filled: true,
                      focusedBorder: InputBorder.none,
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color:colors.blue, width: 1),
                      ),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.redAccent,
                    ),
                    isExpanded: true,
                    hint: Text(
                      'text :',
                      style: GoogleFonts.cairo(fontSize: 14),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: colors.blue,
                    ),
                    iconSize: 30,
                    buttonHeight: 50,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    // dropdownDecoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(15),
                    // ),
                    items: dropDown1
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: GoogleFonts.cairo(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return '1.';
                      }
                    },
                    onChanged: (value) {
                      // dropdownCity = value.toString();
                    },
                    onSaved: (value) {

                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
          child: CustomTextField(hint: "text",label: "text",),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
          child: CustomTextField(hint: "text",label: "text",),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
          child: SizedBox(
            height: 45,
            // margin: EdgeInsets.all(20),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField2(
                decoration: InputDecoration(
                  fillColor: colors.white,
                  focusColor: colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color:colors.blue, width: 1),
                  ),
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.redAccent,
                ),
                isExpanded: true,
                hint: Text(
                  'text :',
                  style: GoogleFonts.cairo(fontSize: 14),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: colors.blue,
                ),
                iconSize: 30,
                buttonHeight: 50,
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                // dropdownDecoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(15),
                // ),
                items: dropDown1
                    .map((item) =>
                    DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: GoogleFonts.cairo(
                          fontSize: 14,
                        ),
                      ),
                    ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return '1.';
                  }
                },
                onChanged: (value) {
                  // dropdownCity = value.toString();
                },
                onSaved: (value) {

                },
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
          child: SizedBox(
            height: 45,
            // margin: EdgeInsets.all(20),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField2(
                decoration: InputDecoration(
                  fillColor: colors.white,
                  focusColor: colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color:colors.blue, width: 1),
                  ),
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.redAccent,
                ),
                isExpanded: true,
                hint: Text(
                  'text :',
                  style: GoogleFonts.cairo(fontSize: 14),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: colors.blue,
                ),
                iconSize: 30,
                buttonHeight: 50,
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                // dropdownDecoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(15),
                // ),
                items: dropDown1
                    .map((item) =>
                    DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: GoogleFonts.cairo(
                          fontSize: 14,
                        ),
                      ),
                    ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return '1.';
                  }
                },
                onChanged: (value) {
                  // dropdownCity = value.toString();
                },
                onSaved: (value) {

                },
              ),
            ),
          ),
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
        const VerticalSpace(120),
      ],
    );
  }
}
