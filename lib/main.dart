import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dashboard/dashboard.dart';
import 'helper/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colors.primary_app,
        tabBarTheme:  const TabBarTheme(
            labelColor: colors.white,
            labelStyle: TextStyle(color: colors.blue,), // color for text
            indicator: UnderlineTabIndicator( // color for indicator (underline)
                borderSide: BorderSide(color: colors.orange))),
          primaryColor: colors.white, // outdated and has no effect to Tabbar
          accentColor: Colors.cyan[600] // deprecated,
      ),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
