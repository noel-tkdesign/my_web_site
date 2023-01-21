import 'package:flutter/material.dart';
import 'package:my_web_site/sections/about/about_section.dart';
import 'package:my_web_site/sections/bottom/bottom_section.dart';

import 'package:my_web_site/sections/contact/contact_section.dart';
import 'package:my_web_site/sections/contactImage/contact_image.dart';
import 'package:my_web_site/sections/development/development_slider.dart';
import 'package:my_web_site/sections/feedback/feedback_section.dart';
import 'package:my_web_site/sections/imagecontact/image_contact.dart';
import 'package:my_web_site/sections/portfolio/portfolio_section.dart';
import 'package:my_web_site/sections/profile/profile.dart';
import 'package:my_web_site/sections/recent_work/recent_work_section.dart';
import 'package:my_web_site/sections/recommendation/recommendation_section.dart';
import 'package:my_web_site/sections/service/service_section.dart';
import 'package:my_web_site/sections/topSection/components/down_menu.dart';
import 'package:my_web_site/sections/topSection/components/menu.dart';
import 'package:my_web_site/sections/topSection/components/menu_screen.dart';
import 'package:my_web_site/sections/topSection/top_section.dart';

import 'sections/topSection/components/tap_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              height: 180,
              width: 180,
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
                    return Scaffold(
                      appBar: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        iconTheme: IconThemeData(color: Colors.black),
                        automaticallyImplyLeading: false,
                        actions: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.clear))
                        ],
                      ),
                      extendBodyBehindAppBar: true,
                      body: MenuScreen(),
                    );
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
        child: Container(
          color: Colors.white10,
          child: Column(
            children: [
              TopSection(),
              Profile(),
              DevelopmentSlider(),
              PortfolioSection(),
              Recommendation_section(),
              ContactImage(),
              BottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
