import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_web_site/components_mobile/mobile_section_title.dart';
import 'package:my_web_site/components_tablet/tablet_section_title.dart';

class MobileProfile extends StatelessWidget {
  const MobileProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(maxHeight: 1000, minHeight: 200),
          width: 600,
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
                MobileSectionTitle(
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
                              image: AssetImage('assets/images/people.png'),
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
                                    fontSize: 20, fontWeight: FontWeight.w100),
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
                          height: 50,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 300,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.,',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      window.open(
                                          'https://github.com/noel-tkdesign',
                                          '');
                                    },
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/github_logo.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      window.open(
                                          'https://twitter.com/tkworksdesign',
                                          '');
                                    },
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/twiter_logo.png',
                                        height: 30,
                                        width: 30,
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
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      window.open(
                                          'https://zenn.dev/tk_design_noel',
                                          '');
                                    },
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/zenn.png',
                                        height: 30,
                                        width: 30,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
