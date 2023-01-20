import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_web_site/components/default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 5, 110, 175).withOpacity(0.15),
            offset: Offset(0, 50),
            blurRadius: 50.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/email.png',
            height: 80,
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Text(
            'ご意見ご感想はGoogleFormsまで ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/images/RightStick.png',
            height: 80,
            width: 80,
          ),
          SizedBox(width: 20),
          DefaultButton(
            imageSrc: 'assets/images/googleforms.png',
            text: "GoogleFormsに移動",
            press: () {
              window.open('https://forms.gle/QfwP9qQoQqCFikoSA', '');
            },
          )
        ],
      ),
    );
  }
}
