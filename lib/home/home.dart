import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


import '../helper/colors.dart';
import '../helper/line_chart_widget.dart';
import '../helper/sizes.dart';
import '../helper/space_widget.dart';
import '../helper/text.dart';
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:AppBar(
          elevation: 1,
          backgroundColor: colors.blue,
          leading: IconButton(
            onPressed: (){
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu,color: colors.white,),
          ),
          leadingWidth: 20,
          actions: [
            IconButton(
              onPressed: (){
              },
              icon: Icon(Icons.search_rounded,color: colors.white,size: 35,),
            ),
            IconButton(
              padding: EdgeInsets.only(right: 6,bottom: 6),
                onPressed: (){
                },
                icon:Icon(FontAwesomeIcons.solidComments,size: 31,color: colors.white,),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: colors.white,
              child: _tabBar
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: _appBarT(),
          ),
          // leading: _appBarT(_scaffoldKey),
        ),
        body: TabBarView(
          children: [
            _firstTap(context,search),
            LineChartSample2(),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.amber,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _firstTap(BuildContext context,TextEditingController search){
  return SingleChildScrollView(
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19,bottom: 16,left: 10,right: 10),
          child: Txt("Some text goes here (as a short description)",size: 12,),
        ),
        Divider(thickness:1.2,height: 0,color: colors.blue,),
        Container(
          width: width(context),
          height: MediaQuery.of(context).size.height*0.09,
          color: colors.searchBar,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    width: width(context)*0.65,
                    child: TextFormField(
                      controller: search,
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        isDense:true,
                        contentPadding: const EdgeInsets.only(top: 4,bottom: 4,right: 8,left: 8),
                        prefixIcon: Icon(Icons.search,color:colors.blue,size: 28,),
                        labelText: "search here...",
                        labelStyle: const TextStyle(color: colors.lightBlue),
                        hintStyle:const TextStyle(color: colors.lightBlue),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: colors.blue,
                          ),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color:  colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                HorizintalSpace(0.8),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 40,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.blue,
                    ),
                    child: Icon(Icons.search_outlined,color: colors.white,),
                  ),
                ),
                HorizintalSpace(1),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 40,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.blue,
                    ),
                    child: Icon(Icons.tune,color: colors.white,),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(thickness:1.2,height: 0,color: colors.blue,),
        Center(
          child: Container(
            height: height(context)*0.56,
            width: width(context),
            padding: EdgeInsets.only(left: 8,right: 8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Container(
                    width: width(context)*0.9,
                    height: height(context)*0.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          color: colors.blue,
                        ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/face.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                    child: Column(
                      children: [
                        VerticalSpace(37),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Txt('Text',color: Colors.red,weight: FontWeight.bold,size: 20,),
                              Row(
                                children: [
                                  Txt('Hyper Link',color: colors.white,weight: FontWeight.bold,size: 15,),
                                  IconButton(onPressed: (){

                                  }, icon: Icon(Icons.more_horiz_rounded,color: colors.white,))
                                ],
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                          child: Row(
                            children: [
                              Txt('Text',color: Colors.black,weight: FontWeight.bold,size: 15,height: 0,)
                            ],
                          ),
                        ),
                        VerticalSpace(37),
                        Container(
                          width: width(context),
                          height: height(context)*0.049,
                          color: Colors.black.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Txt(
                              'Description:some description goes here in two lines',size: 13,
                              color: colors.white,textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Divider(thickness: 1,color: colors.white,height: 1,),
                        Container(
                          width: width(context),
                          height: height(context)*0.1,
                          color: Colors.redAccent.withOpacity(0.5),
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:30.0,top: 10),
                                  child: LinearPercentIndicator(
                                    width: MediaQuery.of(context).size.width - 100,
                                    barRadius: Radius.circular(15),
                                    animation: true,
                                    lineHeight: 20.0,
                                    animationDuration: 2500,
                                    percent: 0.40,
                                    center: Txt("40.0%",color: colors.blue,weight: FontWeight.bold,),
                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                    backgroundColor: colors.white.withOpacity(0.4),
                                    progressColor: colors.white,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0,right: 5),
                                    child: Txt(
                                      'some text goes here in one line',size: 13,
                                      color: colors.white,textAlign: TextAlign.left,
                                      weight: FontWeight.bold,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 1,color: colors.white,height: 1,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: height(context)*0.5,
                    // color: colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: width(context)*0.8,
                          height: height(context)*0.079,
                          decoration: BoxDecoration(
                            color: colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: colors.blue,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Txt("Text",color: colors.blue,size: 12,weight: FontWeight.bold,),
                                    SizedBox(height: 6,),
                                    Container(
                                      width: 65,
                                        child: Txt('text goes here as a definition',
                                          color:colors.blue,
                                          height: 1.2,
                                          size: 10,
                                          textAlign: TextAlign.center,)
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Txt("Text",color: colors.blue,size: 12,weight: FontWeight.bold,),
                                    SizedBox(height: 6,),
                                    Container(
                                        width: 65,
                                        child: Txt('text goes here as a definition',
                                          color:colors.blue,
                                          height: 1.2,
                                          size: 10,
                                          textAlign: TextAlign.center,)
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Txt("Text",color: colors.blue,size: 12,weight: FontWeight.bold,),
                                    SizedBox(height: 6,),
                                    Container(
                                        width: 65,
                                        child: Txt('text goes here as a definition',
                                          color:colors.blue,
                                          height: 1.2,
                                          size: 10,
                                          textAlign: TextAlign.center,)
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Txt("Text",color: colors.blue,size: 12,weight: FontWeight.bold,),
                                    SizedBox(height: 6,),
                                    Container(
                                        width: 65,
                                        child: Txt('text goes here as a definition',
                                          color:colors.blue,
                                          height: 1.2,
                                          size: 10,
                                          textAlign: TextAlign.center,)
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        ClipRRect(
                          borderRadius:  BorderRadius.circular(12),
                          child: Container(
                            width: width(context)*0.8,
                            height: height(context)*0.14,
                            decoration: BoxDecoration(
                              color: colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: colors.blue,
                                width: 4
                              ),
                            ),
                            child:  LineChartSample2()
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
Widget _appBarT(){
  return Row(
        children: [
             Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: colors.white,
                )
              ),
              child: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/images/face.jpg'),
              ),
            ),
          HorizintalSpace(1.7),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Txt(
                'user full name',
                  size: 14,
                  weight: FontWeight.bold,
                  color: colors.white,
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  Icon(Icons.military_tech_outlined,color: colors.orange,),
                  Txt(
                    'Tag|Tag|',
                      size: 12,
                      color: colors.white,
                       textAlign: TextAlign.left,
                    ),
                ],
              )
            ],
          )
        ],
  );
}
TabBar get _tabBar => TabBar(
  labelColor: colors.orange,
  unselectedLabelColor:colors.blue ,
  indicatorColor: colors.orange,
  overlayColor: MaterialStateProperty.all(colors.white),
  indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(width: 3.0,color: colors.orange),
      insets: EdgeInsets.symmetric(horizontal:2.0)
  ),
  tabs: [
    Tab(text: "text1",),
    Tab(text: "text2",),
    Tab(text: "text3",),
    Tab(text: "text4",),
  ],
);
