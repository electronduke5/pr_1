import 'package:flutter/material.dart';
import 'package:pr_1/design_card.dart';
import 'package:pr_1/menu_page.dart';
import 'package:pr_1/profile_page.dart';
import 'package:pr_1/second_page.dart';
import 'package:pr_1/start_page.dart';
import 'package:pr_1/third_page.dart';

import 'fifth_page.dart';
import 'fourth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Практическая №1',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Jakarta'),
      home: const StartPage(),
      routes: <String, WidgetBuilder>{
        '/StartPage': (BuildContext context) => const StartPage(),
        '/SecondPage': (BuildContext context) => const SecondPage(),
        '/ThirdPage': (BuildContext context) => const ThirdPage(),
        '/FourthPage': (BuildContext context) => const FourthPage(),
        '/FifthPage': (BuildContext context) => const FifthPage(),
        '/MenuPage': (BuildContext context) => const MenuPage(),
        '/DesignPage': (BuildContext context) => const DesignPage(),
        '/ProfilePage': (BuildContext context) => const ProfilePage(),
      },
    );
  }
}