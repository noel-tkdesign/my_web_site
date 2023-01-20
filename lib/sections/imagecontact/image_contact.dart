import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_web_site/components/hire_me_card.dart';
import 'package:my_web_site/components/section_title.dart';

class ImageContact extends StatelessWidget {
  const ImageContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      // margin: EdgeInsets.only(top: 40, bottom: 40),
      padding: EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SectionTitle(
            color: Color.fromARGB(255, 217, 255, 0),
            subtitle: 'お問い合わせ',
            title: 'Contact',
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/images/70229-contact-us.json',
                height: 300,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          HireMeCard(),
        ],
      ),
    );
  }
}
