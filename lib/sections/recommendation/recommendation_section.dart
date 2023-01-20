import 'package:flutter/material.dart';
import 'package:my_web_site/models/Feedback.dart';
import 'package:my_web_site/models/Recommendation.dart';
import 'package:my_web_site/sections/recommendation/components/recommendation_card.dart';

import '../../components/section_title.dart';
import '../feedback/components/feedback_card.dart';

class Recommendation_section extends StatelessWidget {
  const Recommendation_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //constraints: BoxConstraints(maxHeight: 1900, minHeight: 700),
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SectionTitle(
            title: "Recommendation & Community",
            subtitle: "モバイル開発やWeb開発のおすすめ学習サイトを紹介します",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 1110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 20,
                  runSpacing: 40,
                  children: List.generate(
                    recommendations.length,
                    (index) => RecommendationCard(index: index),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
