import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_site/constants.dart';
import 'package:my_web_site/home_page.dart';
import 'package:my_web_site/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tkworksdesign',
      theme: ThemeData(
          inputDecorationTheme: kDefaultInputDecorationTheme,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'NotoSansJP'),
      home: const HomePage(),
    );
  }
}
