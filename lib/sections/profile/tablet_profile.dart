import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_web_site/components_tablet/tablet_section_title.dart';
import 'package:my_web_site/models/Recommendation.dart';
import 'package:my_web_site/sections/about/components/about_section_text.dart';

class TabletProfile extends StatelessWidget {
  const TabletProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 600, minHeight: 200),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/kakukaku396.png'),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          children: [
            TabletSectionTitle(
              color: Color(0xFFFF0000),
              subtitle: '開発者紹介',
              title: 'Profile',
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
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
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Koji Kawakami",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w100),
                          ),
                          Text(
                            'カワカミ　コウジ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 400,
                          child: Text(
                            comment,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
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
                                    height: 25,
                                    width: 25,
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
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  window.open(
                                      'https://qiita.com/tkworksdesign_noel',
                                      '');
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/image-qiitan.png',
                                    height: 25,
                                    width: 25,
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
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 60),
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
