import 'package:flutter/material.dart';
import 'package:my_web_site/sections/bottom/mobile_bottom_section.dart';
import 'package:my_web_site/sections/bottom/tablet_bottom_sectiom.dart';
import 'package:my_web_site/sections/contact/contact_section.dart';
import 'package:my_web_site/sections/contactImage/mobile_contact-image.dart';
import 'package:my_web_site/sections/contactImage/tablet_contact_image.dart';
import 'package:my_web_site/sections/development/mobile_development_slider.dart';
import 'package:my_web_site/sections/portfolio/mobile_portfolio_section.dart';
import 'package:my_web_site/sections/profile/mobile_profile.dart';
import 'package:my_web_site/sections/profile/mobile_profile2.dart';
import 'package:my_web_site/sections/recommendation/mobile_recomendation_section.dart';
import 'package:my_web_site/sections/topSection/mobile_top_section.dart';
import 'package:my_web_site/sections/topSection/mobile_top_section2.dart';
import 'package:my_web_site/sections/topSection/tablet_top_section.dart';
import 'package:my_web_site/sections/topSection/tabletcomponents/tablet_down_menu.dart';

class MobileHomeScreen2 extends StatelessWidget {
  const MobileHomeScreen2({super.key});

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
              height: 120,
              width: 120,
            ),
          ],
        ),
        /* actions: [
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
        ],*/
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MobileTopSection2(),
            MobileProfile2(),
            MobileDevelopmentSlider(),
            MoibilePortfolioSection(),
            MobileRecommendationSection(),
            MobileContactImage(),
            MobileBottomSection()
          ],
        ),
      ),
    );
  }
}
