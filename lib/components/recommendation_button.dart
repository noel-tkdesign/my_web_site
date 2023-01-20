import 'package:flutter/material.dart';

class RecommendationButton extends StatelessWidget {
  const RecommendationButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.press,
  });
  final String imageSrc, text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          )),
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
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
