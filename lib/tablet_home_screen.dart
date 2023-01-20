import 'package:flutter/material.dart';
import 'package:my_web_site/sections/bottom/bottom_section.dart';
import 'package:my_web_site/sections/bottom/tablet_bottom_sectiom.dart';
import 'package:my_web_site/sections/contact/contact_section.dart';
import 'package:my_web_site/sections/contact/tablet_contact_section.dart';
import 'package:my_web_site/sections/contactImage/tablet_contact_image.dart';

import 'package:my_web_site/sections/development/tablet_development_slider.dart';
import 'package:my_web_site/sections/profile/tablet_profile.dart';
import 'package:my_web_site/sections/recommendation/tablet_recomendation_section.dart';
import 'package:my_web_site/sections/topSection/tablet_top_section.dart';

import 'sections/portfolio/tablet_portfolio_section.dart';

import 'sections/topSection/tabletcomponents/tablet_down_menu.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Image.asset(
              'assets/images/tklogo2.png',
              height: 150,
              width: 150,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return TabletDownMenu();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    //final Offset begin = Offset(0.0, 1.0); // 下から上
                    final Offset begin = Offset(0.0, -1.0); // 上から下
                    final Offset end = Offset.zero;
                    final Animatable<Offset> tween =
                        Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: Curves.easeInOut));
                    final Animation<Offset> offsetAnimation =
                        animation.drive(tween);
                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              ),
            },
          ),
          //TapMenu(),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TabletTopsection(),
            TabletProfile(),
            TabletDevelopmentSlider(),
            TabletPortfolioSection(),
            TabletRecommendationSection(),
            TabletContactImage(),
            TabletBottomSection()
          ],
        ),
      ),
    );
  }
}
