import 'package:flutter/material.dart';
import 'package:my_web_site/components/bottom_bar_column.dart';
import 'package:my_web_site/components/info_text.dart';

class TabletBottomSection extends StatelessWidget {
  const TabletBottomSection({super.key});

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
              width: 600,
              child: Row(
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
                          SizedBox(
                            width: 100,
                          ),
                          Image.asset(
                            'assets/images/tkdesign.png',
                            height: 150,
                            width: 150,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
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
                color: Colors.blueGrey[200],
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
