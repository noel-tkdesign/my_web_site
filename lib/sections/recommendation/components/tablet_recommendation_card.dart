import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_web_site/components/recommendation_button.dart';
import 'package:my_web_site/models/Recommendation.dart';

class TabletRecommendationCard extends StatefulWidget {
  const TabletRecommendationCard({super.key, required this.index});
  final int index;

  @override
  State<TabletRecommendationCard> createState() =>
      _TabletRecommendationCardState();
}

class _TabletRecommendationCardState extends State<TabletRecommendationCard> {
  Duration duration = Duration(milliseconds: 200);

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 240,
        width: 500,
        decoration: BoxDecoration(
          color: recommendations[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                color: Color.fromARGB(255, 5, 110, 175).withOpacity(0.15),
                offset: Offset(0, 50),
                blurRadius: 50.0,
              ),
          ],
        ),
        child: Row(
          children: [
            Transform.translate(
              offset: Offset(-10, -80),
              child: AnimatedContainer(
                duration: duration,
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(color: Colors.grey, width: 1),
                  image: DecorationImage(
                    image: AssetImage(recommendations[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    recommendations[widget.index].name,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 380,
                  child: Text(
                    recommendations[widget.index].review,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            )),
                        onPressed: () {
                          window.open(recommendations[widget.index].weburl, '');
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/website.png',
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              ' WebSite',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            )),
                        onPressed: () {
                          window.open(
                              recommendations[widget.index].youtubeurl, '');
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Youtube2.png',
                              height: 20,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Youtube',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ],
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
