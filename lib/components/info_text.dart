import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  InfoText({required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$type: ',
          style: TextStyle(
            color: Color.fromARGB(255, 156, 73, 250),
            fontSize: 16,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
