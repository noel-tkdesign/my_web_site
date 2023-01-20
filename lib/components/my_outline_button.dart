import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Color(0xFFEDEDED)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 45), //パディング
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
