import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          constraints: BoxConstraints(
            maxWidth: 1110,
            //minHeight: size.height * 1.00,
          ),
          width: double.infinity,
          color: Colors.white.withOpacity(0.1),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Wellcom!!',
                          textStyle: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          speed: const Duration(milliseconds: 500),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 200),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/tkdesign.png',
                      height: 400,
                      width: 400,
                      color: Colors.blue,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Portfolio Web Site',
                          textStyle: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
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
      ),
    );
  }
}
