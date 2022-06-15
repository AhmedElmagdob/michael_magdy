import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:michael_magdy/dashboard/dashboard.dart';
import 'package:michael_magdy/ui/cart/provider.dart';
import 'package:provider/provider.dart';
import 'helper/colors.dart';
import 'helper/custom_stepper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
      MultiProvider(
          providers: [
            ListenableProvider<SelectedStepProvider>(create: (context) => SelectedStepProvider()),
          ],
          child: const MyApp()
      )
  );
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
            labelStyle: TextStyle(color: colors.blue,),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: colors.orange)
            )
        ),
          primaryColor: colors.white,
          accentColor: Colors.cyan[600]
      ),
      debugShowCheckedModeBanner: false,
      home:  const Dashboard(),
    );
  }
}
