import 'package:flutter/material.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w200,
            color: Colors.grey,
            height: 2),
      ),
    );
  }
}
