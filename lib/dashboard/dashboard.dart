
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../helper/bottom.dart';
import '../helper/colors.dart';
import '../helper/curvedNavBar.dart';
import '../helper/curves_action.dart';
import '../helper/text.dart';
import '../home/home.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  int _selBottom = 0;
  late TabController _tabController;
  late AnimationController _scaleAnimation;

  @override
  void initState() {
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    _scaleAnimation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    _tabController.addListener(
          () {
        Future.delayed(Duration(seconds: 0)).then(
              (value) {},
        );

        setState(
              () {
            _selBottom = _tabController.index;
          },
        );
      },
    );
    // TODO: implement initState
    super.initState();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_tabController.index != 0) {
          _tabController.animateTo(0);
          return false;
        }
        return true;
      },
      child:
      SafeArea(
        top: false,
        child: Scaffold(
          // bottomNavigationBar: _getBottomBar(context),
          key: _scaffoldKey,
          body: CurvedNavBar(
            actionButton: CurvedActionBar(
                onTab: (value) {
                  /// perform action here
                  print(value);
                },
                activeIcon: Container(
                  decoration:
                  const BoxDecoration(color: colors.blue, shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Icon(
                          Icons.person,
                          color: colors.white,
                          size: 30,
                        ),
                        Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                ),
                inActiveIcon: Container(
                  width: 70,
                  height: 60,
                  decoration:
                  BoxDecoration(color: colors.blue, shape: BoxShape.circle),
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Icon(
                        Icons.person,
                        color: colors.white,
                        size: 32,
                      ),
                      Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
                ),
            ),
            activeColor: colors.white,
            navBarBackgroundColor: colors.blue,
            inActiveColor: colors.white,
            appBarItems: [
              FABBottomAppBarItem(
                  activeIcon: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Icon(
                          Icons.home_outlined,
                          color: colors.white,
                          size: 32,
                        ),
                        Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      SizedBox(height: 8,),
                      Icon(
                        Icons.home_outlined,
                        color: colors.white,
                        size: 32,
                      ),
                      Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
              FABBottomAppBarItem(
                  activeIcon: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Icon(
                          Icons.text_snippet_outlined,
                          color: colors.white,
                          size: 30,
                        ),
                        Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      SizedBox(height: 8,),
                      Icon(
                        Icons.text_snippet_outlined,
                        color: colors.white,
                        size: 30,
                      ),
                      Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
              FABBottomAppBarItem(
                  activeIcon: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Icon(
                          Icons.clean_hands_outlined,
                          color: colors.white,
                          size: 30,
                        ),
                        Txt("text",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      SizedBox(height: 8,),
                      Icon(
                          Icons.clean_hands_outlined,
                        color: colors.white,
                        size: 30,
                      ),
                      Txt("text",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
              FABBottomAppBarItem(
                  activeIcon: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Icon(
                          Icons.notifications_none_rounded,
                          color: colors.white,
                          size: 30,
                        ),
                        Txt("notification",color: colors.white,size: 10 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      SizedBox(height: 8,),
                      Icon(
                          Icons.notifications_none_rounded,
                        color: colors.white,
                        size: 30,
                      ),
                      Txt("notification",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
            ],
            bodyItems: [
              Home(),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.blue,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.pinkAccent,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.blue,
              ),
            ],
            actionBarView: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
