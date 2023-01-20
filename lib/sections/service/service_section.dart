import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_web_site/components/section_title.dart';
import 'package:my_web_site/models/Service.dart';
import 'package:my_web_site/sections/service/components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            subtitle: 'My Strong Arenas',
            title: 'Service Offerings',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              services.length,
              (index) => ServiceCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
