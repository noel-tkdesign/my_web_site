import 'package:flutter/material.dart';
import 'package:my_web_site/components/default_button.dart';
import 'package:my_web_site/components/hire_me_card.dart';
import 'package:my_web_site/components/section_title.dart';
import 'package:my_web_site/models/RecentWorks.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 120),
      width: double.infinity,
      //height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background5.png'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: 'Recent Works',
            subtitle: 'my Strong Arenas',
            color: Color(
              0xFFFFB100,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: 20,
              runSpacing: 40,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(
                  index: index,
                  press: () {},
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
