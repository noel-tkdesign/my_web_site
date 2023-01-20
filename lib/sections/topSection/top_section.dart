import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_web_site/sections/topSection/components/glass_content.dart';
import 'package:my_web_site/sections/topSection/components/logo_and_blurbox.dart';
import 'package:my_web_site/sections/topSection/components/person_pic.dart';

import 'components/menu.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/nagareru.png'),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        width: 1110,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              top: 30,
              right: 0,
              child: PersonPic(
                Width: 600,
                Height: 800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
