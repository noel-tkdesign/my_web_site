import 'package:flutter/material.dart';

class TabletSectionTitle extends StatelessWidget {
  const TabletSectionTitle({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
  }) : super(key: key);

  final String title, subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10),
      constraints: BoxConstraints(maxWidth: 500),
      height: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(top: 36),
                width: 3,
                height: 50,
                color: Colors.black,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
