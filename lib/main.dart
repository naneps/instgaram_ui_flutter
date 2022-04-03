import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instgaram_ui_flutter/responsive/mobile_screen_layout.dart';
import 'package:instgaram_ui_flutter/responsive/responsive_layout_screen.dart';
import 'package:instgaram_ui_flutter/responsive/web_screen_layout.dart';
import 'package:instgaram_ui_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Instagram',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
