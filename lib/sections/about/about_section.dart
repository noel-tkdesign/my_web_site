import 'package:flutter/material.dart';
import 'package:my_web_site/components/default_button.dart';
import 'package:my_web_site/components/experience_card.dart';
import 'package:my_web_site/components/my_outline_button.dart';
import 'package:my_web_site/sections/about/components/about_section_text.dart';
import 'package:my_web_site/sections/about/components/about_text_sign.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.,',
                ),
              ),
              ExperienceCard(numOfExp: '8'),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.,',
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: 'assets/images/hand.png',
                text: 'Hire Me!',
                press: () {},
              ),
              SizedBox(
                width: 30,
              ),
              DefaultButton(
                imageSrc: 'assets/images/download.png',
                text: 'Download CV',
                press: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
