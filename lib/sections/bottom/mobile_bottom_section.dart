import 'package:flutter/material.dart';
import 'package:my_web_site/components/bottom_bar_column.dart';
import 'package:my_web_site/components/info_text.dart';

class MobileBottomSection extends StatelessWidget {
  const MobileBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/nagareru.png'),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomBarColumn(
                    heading: 'SOCIAL',
                    s1: 'GitHub',
                    s2: 'Twitter',
                    s3: 'Qiita',
                    s4: 'Zen',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/tkdesign.png',
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InfoText(
                            type: 'Email',
                            text: 'tkworksdesign@gmail.com',
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.blueGrey,
            ),
            SizedBox(height: 20),
            Text(
              'Copyright © 2022 | tkworksDesign',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
