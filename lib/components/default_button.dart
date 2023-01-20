import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String imageSrc, text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[50],
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: press,
          child: Row(
            children: [
              Image.asset(
                imageSrc,
                height: 40,
              ),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
