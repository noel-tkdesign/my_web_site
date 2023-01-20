import 'package:flutter/material.dart';
import 'package:my_web_site/sections/topSection/components/glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacer(
          flex: 15,
        ),
        GlassContent(size: size),
        Spacer(
          flex: 15,
        ),
      ],
    );
  }
}
