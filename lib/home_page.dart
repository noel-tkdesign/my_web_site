import 'package:flutter/material.dart';
import 'package:my_web_site/home_screen.dart';
import 'package:my_web_site/mobile_home_screen.dart';
import 'package:my_web_site/mobile_home_screen2.dart';
import 'package:my_web_site/responsive_layout.dart';
import 'package:my_web_site/tablet_home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileHomeScreen2(),
        desktopBody: HomeScreen(),
        TabletBody: TabletHomeScreen(),
      ),
    );
  }
}
