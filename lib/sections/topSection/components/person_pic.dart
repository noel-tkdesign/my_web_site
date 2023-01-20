import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
    required this.Width,
    required this.Height,
  }) : super(key: key);
  final double Width;
  final double Height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset(
        'assets/images/111011-mobile-app-promo.json',
        width: Width,
        height: Height,
      ),
    );
  }
}
