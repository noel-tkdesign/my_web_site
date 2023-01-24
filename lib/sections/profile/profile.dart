import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_web_site/components/default_button.dart';
import 'package:my_web_site/components/experience_card.dart';
import 'package:my_web_site/components/my_outline_button.dart';
import 'package:my_web_site/components/section_title.dart';
import 'package:my_web_site/models/Recommendation.dart';
import 'package:my_web_site/sections/about/components/about_section_text.dart';

import '../about/components/about_text_sign.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/kakukaku396.png'),
        ),
      ),
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              color: Color(0xFFFF0000),
              subtitle: '開発者紹介',
              title: 'Profile',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        border: Border.all(color: Colors.white, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 5, 110, 175)
                                .withOpacity(0.15),
                            offset: Offset(0, 50),
                            blurRadius: 50.0,
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/Profile.JPG'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Koji Kawakami",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          ),
                          Text(
                            'カワカミ　コウジ',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 500,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          comment,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              height: 2),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              window.open(
                                  'https://github.com/noel-tkdesign', '');
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/images/github_logo.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              window.open(
                                  'https://twitter.com/tkworksdesign', '');
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/images/twiter_logo.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              window.open(
                                  'https://qiita.com/tkworksdesign_noel', '');
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/images/image-qiitan.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              window.open(
                                  'https://zenn.dev/tk_design_noel', '');
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/images/zenn.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            /* Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.link,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '各種リンク',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyOutlineButton(
                  imageSrc: 'assets/images/github_logo.png',
                  text: 'GitHub',
                  press: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                DefaultButton(
                  imageSrc: 'assets/images/twiter_logo.png',
                  text: 'twitter',
                  press: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                DefaultButton(
                  imageSrc: 'assets/images/zenn.png',
                  text: 'Zenn',
                  press: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                DefaultButton(
                  imageSrc: 'assets/images/image-qiitan.png',
                  text: 'Qiita',
                  press: () {},
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
