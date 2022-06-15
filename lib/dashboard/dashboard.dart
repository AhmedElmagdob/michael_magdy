
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:michael_magdy/ui/cart/cart.dart';
import 'package:michael_magdy/ui/home/home.dart';
import 'package:michael_magdy/ui/register2/base2.dart';
import '../helper/bottom.dart';
import '../helper/colors.dart';
import '../helper/curvedNavBar.dart';
import '../helper/curves_action.dart';
import '../helper/text.dart';
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
      duration: const Duration(milliseconds: 2000),
    );
    _tabController.addListener(
          () {
        Future.delayed(const Duration(seconds: 0)).then(
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
                        const SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: SvgPicture.asset(
                            "assets/icons/person.svg",
                            height: 35,
                          ),
                        ),
                        const Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                ),
                inActiveIcon: Container(
                  width: 70,
                  height: 60,
                  decoration:
                  const BoxDecoration(color: colors.blue, shape: BoxShape.circle),
                  child: Column(
                    children: [
                      const SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: SvgPicture.asset(
                          "assets/icons/person.svg",
                          height: 35,
                        ),
                      ),
                      const Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
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
                        const SizedBox(height: 8,),
                        SvgPicture.asset(
                          "assets/icons/home.svg",
                          height: 30,
                        ),
                        const Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      const SizedBox(height: 8,),
                      SvgPicture.asset(
                        "assets/icons/home.svg",
                        height: 30,
                      ),
                      const Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
              FABBottomAppBarItem(
                  activeIcon: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        const SizedBox(height: 8,),
                        SvgPicture.asset(
                          "assets/icons/Sell.svg",
                          height: 30,
                        ),
                        const Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      const SizedBox(height: 8,),
                      SvgPicture.asset(
                        "assets/icons/Sell.svg",
                        height: 30,
                      ),
                      const Txt("Home",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
              FABBottomAppBarItem(
                  activeIcon: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        const SizedBox(height: 8,),
                        SvgPicture.asset(
                          "assets/icons/3.svg",
                          height: 35,
                        ),
                        const Txt("text",color: colors.white,size: 12 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      const SizedBox(height: 8,),
                  SvgPicture.asset(
                      "assets/icons/3.svg",
                    height: 35,
                  ),
                      const Txt("text",color: colors.white,size: 12 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
              FABBottomAppBarItem(
                  activeIcon: CircleAvatar(
                    radius: 30,
                    backgroundColor: colors.orange,
                    child: Column(
                      children: [
                        const SizedBox(height: 8,),
                        SvgPicture.asset(
                          "assets/icons/notification.svg",
                          height: 32,
                        ),
                        const Txt("notification",color: colors.white,size: 10 ,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  inActiveIcon: Column(
                    children: [
                      const SizedBox(height: 8,),
                      SvgPicture.asset(
                        "assets/icons/notification.svg",
                        height: 32,
                      ),
                      const Txt("notification",color: colors.white,size: 10 ,weight: FontWeight.bold),
                    ],
                  ),
              ),
            ],
            bodyItems: [
              Home(),
              Base2(),
              const Cart(),
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
