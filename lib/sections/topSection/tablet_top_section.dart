import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:my_web_site/sections/topSection/components/logo_and_blurbox.dart';
import 'package:my_web_site/sections/topSection/components/person_pic.dart';

class TabletTopsection extends StatelessWidget {
  const TabletTopsection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 550, minHeight: 200),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/nagareru.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          GlassmorphicContainer(
            width: 600,
            height: 360,
            borderRadius: 20,
            blur: 10,
            border: 0,
            linearGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.white.withOpacity(0.1),
              ],
            ),
            borderGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.5),
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
                        width: 50,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Wellcom!!',
                            textStyle: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                            speed: const Duration(milliseconds: 500),
                          ),
                        ],
                        totalRepeatCount: 1,
                        pause: const Duration(milliseconds: 200),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                      SizedBox(
                        width: 50,
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
                      Image.asset(
                        'assets/images/tkdesign.png',
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      PersonPic(
                        Height: 200,
                        Width: 200,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 120,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Portfolio Web Site',
                            textStyle: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                            speed: const Duration(milliseconds: 300),
                          ),
                        ],
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 200),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
