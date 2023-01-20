import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_web_site/components_mobile/mobile_section_title.dart';

class MobileDevelopmentSlider extends StatefulWidget {
  const MobileDevelopmentSlider({super.key});

  @override
  State<MobileDevelopmentSlider> createState() =>
      _MobileDevelopmentSliderState();
}

class _MobileDevelopmentSliderState extends State<MobileDevelopmentSlider> {
  int _current = 0;

  final List<String> images = [
    'assets/images/iosimage.png',
    'assets/images/flutterimage.png',
    'assets/images/FlutterwebApp.png',
    'assets/images/Icon image.png'
  ];

  final List<String> places = [
    'SwiftUI',
    'FlutterApp',
    'FlutterWeb',
    'Icon Design'
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
            child: Image.asset(
              element,
              width: 250,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
      ),
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        constraints: BoxConstraints(maxWidth: 400),
        child: Column(
          children: [
            MobileSectionTitle(
              color: Color.fromARGB(255, 0, 143, 252),
              subtitle: 'おもな開発フレームワーク',
              title: 'Development',
            ),
            Column(
              children: [
                CarouselSlider(
                  items: generateImagesTiles(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 5 / 6,
                    onPageChanged: (index, other) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
