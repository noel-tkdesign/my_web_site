import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';
import 'package:my_web_site/sections/topSection/components/glass_content.dart';
import 'package:my_web_site/sections/topSection/components/logo_and_blurbox.dart';
import 'package:my_web_site/sections/topSection/components/person_pic.dart';

class MobileTopSection extends StatelessWidget {
  const MobileTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(maxHeight: 1000, minHeight: 700),
          width: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background4.png'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              GlassmorphicContainer(
                width: 350,
                height: 350,
                borderRadius: 20,
                blur: 10,
                border: 0,
                linearGradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.05),
                    Colors.white.withOpacity(0.05),
                  ],
                ),
                borderGradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.05),
                    Colors.white.withOpacity(0.05),
                  ],
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Wellcom!!',
                                textStyle: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                speed: const Duration(milliseconds: 500),
                              ),
                            ],
                            totalRepeatCount: 5,
                            pause: const Duration(milliseconds: 200),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Image.asset(
                              'assets/images/tkdesign.png',
                              height: 180,
                              width: 180,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 80,
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Portfolio Web Site',
                                textStyle: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                speed: const Duration(milliseconds: 500),
                              ),
                            ],
                            totalRepeatCount: 5,
                            pause: const Duration(milliseconds: 200),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PersonPic(
                    Height: 200,
                    Width: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
