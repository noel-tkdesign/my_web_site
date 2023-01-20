import 'package:flutter/material.dart';
import 'package:my_web_site/components/bottom_bar_column.dart';
import 'package:my_web_site/components/info_text.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage('assets/images/nagareru.png'),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SizedBox(
              width: 1110,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomBarColumn(
                    heading: 'SOCIAL',
                    s1: 'GitHub',
                    s2: 'Twitter',
                    s3: 'Qiita',
                    s4: 'Zen',
                  ),

                  /*Container(
                    color: Colors.blueGrey,
                    width: 2,
                    height: 150,
                  ),*/
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/images/tkdesign.png',
                            height: 200,
                            width: 200,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      InfoText(
                        type: 'Email',
                        text: ' tkworksdesign@gmail.com',
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
