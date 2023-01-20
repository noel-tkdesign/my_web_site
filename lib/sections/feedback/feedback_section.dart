import 'package:flutter/material.dart';
import 'package:my_web_site/components/section_title.dart';
import 'package:my_web_site/models/Feedback.dart';
import 'package:my_web_site/sections/feedback/components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 45),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback Received",
            subtitle: "Client's testimonials that inspired me lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(index: index),
            ),
          )
        ],
      ),
    );
  }
}
