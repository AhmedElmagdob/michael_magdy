import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/button.dart';
import 'package:michael_magdy/helper/custom_text_field.dart';
import 'package:michael_magdy/helper/space_widget.dart';
import 'package:michael_magdy/helper/text.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../helper/colors.dart';

class BusinessValuationOne extends StatefulWidget{
  const BusinessValuationOne({Key? key}) : super(key: key);

  @override
  State<BusinessValuationOne> createState() => _BusinessValuationOneState();
}

class _BusinessValuationOneState extends State<BusinessValuationOne> {
  double _value = 40.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Txt(
                  "Headline",
                  color: colors.black,
                  weight: FontWeight.bold,
                  size: 16,

                ),
              ),
              const VerticalSpace(10),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.blue),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Txt(
                      "Headline",
                      color: colors.blue,
                      weight: FontWeight.bold,
                      size: 16,
                    ),
                    Txt(
                      "Headline",
                      color: colors.blue,
                      weight: FontWeight.bold,
                      size: 24,
                    ),
                    Txt(
                      "Description 2 lines",
                      color: colors.blue,
                      weight: FontWeight.bold,
                      size: 16,
                    ),
                  ],
                ),
              ),
              const VerticalSpace(10),
              const Txt(
                "description 2 lines",
                color: colors.black,
                weight: FontWeight.bold,
              ),
              const VerticalSpace(20),
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
                padding:  EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.06,
                    right: MediaQuery.of(context).size.width * 0.06),
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
              ),
              const VerticalSpace(20),
              Padding(
                padding:  EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.06,
                    right: MediaQuery.of(context).size.width * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Txt(
                      "text",
                      color: colors.black,
                      weight: FontWeight.bold,
                      size: 16,
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
              ),
              const VerticalSpace(20),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.red),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Txt(
                      "Headline",
                      color: colors.red,
                      weight: FontWeight.bold,
                      size: 16,
                    ),
                    Txt(
                      "Headline",
                      color: colors.red,
                      weight: FontWeight.bold,
                      size: 24,
                    ),

                  ],
                ),
              ),
              const VerticalSpace(20),
              LBottom(
                title: const Txt(
                  "Text",
                  color: colors.white,
                  weight: FontWeight.bold,
                ),
                function: () {  },
              ),

            ],
          ),
        ),
      ),
    );
  }
}