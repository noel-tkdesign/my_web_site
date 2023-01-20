import 'package:flutter/material.dart';
import 'package:my_web_site/components_tablet/tablet_section_title.dart';
import 'package:my_web_site/models/Recommendation.dart';
import 'package:my_web_site/sections/recommendation/components/recommendation_card.dart';
import 'package:my_web_site/sections/recommendation/components/tablet_recommendation_card.dart';

class TabletRecommendationSection extends StatelessWidget {
  const TabletRecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //constraints: BoxConstraints(maxHeight: 1100, minHeight: 700),
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TabletSectionTitle(
            title: "Recommendation & Community",
            subtitle: "モバイル開発やWeb開発のおすすめ学習サイトを紹介します",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 50,
                  runSpacing: 50,
                  children: List.generate(
                    recommendations.length,
                    (index) => TabletRecommendationCard(index: index),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
