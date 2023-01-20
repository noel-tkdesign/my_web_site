import 'package:flutter/material.dart';
import 'package:my_web_site/components_mobile/mobile_section_title.dart';
import 'package:my_web_site/components_tablet/tablet_section_title.dart';
import 'package:my_web_site/models/Recommendation.dart';
import 'package:my_web_site/sections/recommendation/components/mobile_recomendation_card.dart';
import 'package:my_web_site/sections/recommendation/components/recommendation_card.dart';
import 'package:my_web_site/sections/recommendation/components/tablet_recommendation_card.dart';

class MobileRecommendationSection extends StatelessWidget {
  const MobileRecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: MobileSectionTitle(
              title: "Community",
              subtitle: "モバイル開発やWeb開発のおすすめ学習サイトを紹介します",
              color: Color(0xFF00B1FF),
            ),
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
                    (index) => MobileRecomendationCard(index: index),
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
