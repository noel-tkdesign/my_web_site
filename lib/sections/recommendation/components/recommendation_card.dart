import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_web_site/components/default_button.dart';
import 'package:my_web_site/components/recommendation_button.dart';
import 'package:my_web_site/models/Recommendation.dart';

class RecommendationCard extends StatefulWidget {
  const RecommendationCard({super.key, required this.index});

  final int index;

  @override
  State<RecommendationCard> createState() => _RecommendationCardState();
}

class _RecommendationCardState extends State<RecommendationCard> {
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
        margin: EdgeInsets.only(top: 60),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 350,
        width: 1100,
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
              offset: Offset(0, -0),
              child: AnimatedContainer(
                duration: duration,
                height: 200,
                width: 200,
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
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    recommendations[widget.index].name,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 800,
                  child: Text(
                    recommendations[widget.index].review,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 750,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RecommendationButton(
                          imageSrc: 'assets/images/website.png',
                          text: 'WebSite',
                          press: () {
                            window.open(
                                recommendations[widget.index].weburl, '');
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      RecommendationButton(
                        imageSrc: 'assets/images/Youtube2.png',
                        text: 'Youtube',
                        press: () {
                          window.open(
                              recommendations[widget.index].youtubeurl, '');
                        },
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

//recommendations[widget.index].weburl,