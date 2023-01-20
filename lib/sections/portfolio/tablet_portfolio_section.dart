import 'package:flutter/material.dart';
import 'package:my_web_site/components_tablet/tablet_section_title.dart';
import 'package:my_web_site/models/Portfolio.dart';
import 'package:my_web_site/sections/portfolio/components/tablet_portfolio_card.dart';

import 'components/portfolio_card.dart';

class TabletPortfolioSection extends StatefulWidget {
  const TabletPortfolioSection({super.key});

  @override
  State<TabletPortfolioSection> createState() => _TabletPortfolioSectionState();
}

class _TabletPortfolioSectionState extends State<TabletPortfolioSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 120),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/kakukaku396.png'),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TabletSectionTitle(
            title: 'Portfolio',
            subtitle: '開発実績を紹介します',
            color: Color(
              0xFFFFB100,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 100,
                  runSpacing: 100,
                  children: List.generate(
                    portfolio.length,
                    (index) => TabletPortfolioCard(
                      index: index,
                      press: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          /* Transform.translate(
            offset: Offset(0, 50),
            child: HireMeCard(),
          ),*/
        ],
      ),
    );
  }
}
