import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_web_site/components/section_title.dart';

class PortfolioWeb extends StatefulWidget {
  const PortfolioWeb({super.key});

  @override
  State<PortfolioWeb> createState() => _PortfolioWebState();
}

class _PortfolioWebState extends State<PortfolioWeb> {
  int _current = 0;

  final List<String> images = [
    'assets/images/Web6.png',
    'assets/images/Web10.png',
    'assets/images/Web8.png',
    'assets/images/Web7.png',
    'assets/images/Web9.png',
  ];
  List<Widget> generateImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
            child: Image.asset(
              element,
              width: 500,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/nagareru.png'),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 100.0),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: SectionTitle(
                      title: 'tkworksdesign PortofolioWebsite',
                      subtitle: 'FlutterWeb',
                      color: Color(
                        0xFFFFB100,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    CarouselSlider(
                      items: generateImagesTiles(),
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 24 / 8,
                        onPageChanged: (index, other) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.map((url) {
                          int index = images.indexOf(url);
                          return Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Color.fromRGBO(0, 0, 0, 0.9)
                                  : Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '概要',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'tkworksdesignのポートフォリオサイト(本ウェブサイトです)\nFlutterでの初の開発作品になります。\n個人開発や共同開発の作品紹介をメインに今後もアップデートをしていきます。',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '使用フレームワーク',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Flutter Web',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 200,
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
