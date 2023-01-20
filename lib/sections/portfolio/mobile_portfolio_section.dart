import 'package:flutter/material.dart';
import 'package:my_web_site/components_mobile/mobile_section_title.dart';
import 'package:my_web_site/models/Portfolio.dart';
import 'package:my_web_site/sections/portfolio/components/tablet_portfolio_card.dart';

class MoibilePortfolioSection extends StatefulWidget {
  const MoibilePortfolioSection({super.key});

  @override
  State<MoibilePortfolioSection> createState() =>
      _MoibilePortfolioSectionState();
}

class _MoibilePortfolioSectionState extends State<MoibilePortfolioSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      constraints: BoxConstraints(maxHeight: 1000, minHeight: 700),
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
          MobileSectionTitle(
            title: 'Portfolio',
            subtitle: '開発実績を紹介します',
            color: Color(
              0xFFFFB100,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 50,
                  runSpacing: 50,
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
