import 'package:flutter/material.dart';
import 'package:my_web_site/components/default_button.dart';
import 'package:my_web_site/components/hire_me_card.dart';
import 'package:my_web_site/components/section_title.dart';
import 'package:my_web_site/models/Portfolio.dart';
import 'package:my_web_site/models/RecentWorks.dart';
import 'package:my_web_site/sections/portfolio/components/portfolio_card.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 120),
      width: double.infinity,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/kakukaku396.png',
          ),
        ),
      ),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SectionTitle(
              title: 'Portfolio',
              subtitle: '開発実績を紹介します',
              color: Color(
                0xFFFFB100,
              ),
            ),
            SizedBox(height: 120),
            SizedBox(
              width: 1110,
              child: Wrap(
                spacing: 100,
                runSpacing: 100,
                children: List.generate(
                  portfolio.length,
                  (index) => PortfolioCard(
                    index: index,
                    press: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
            /* Transform.translate(
              offset: Offset(0, 50),
              child: HireMeCard(),
            ),*/
          ],
        ),
      ),
    );
  }
}
