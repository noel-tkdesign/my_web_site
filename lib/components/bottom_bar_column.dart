import 'dart:html';

import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;
  final String s4;

  BottomBarColumn({
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.s4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              color: Color.fromARGB(255, 156, 73, 250),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              window.open('https://github.com/noel-tkdesign', '');
            },
            child: Text(s1, style: TextStyle(color: Colors.blue, fontSize: 14)),
          ),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {
              window.open('https://twitter.com/tkworksdesign', '');
            },
            child: Text(s2, style: TextStyle(color: Colors.blue, fontSize: 14)),
          ),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {
              window.open('https://qiita.com/tkworksdesign_noel', '');
            },
            child: Text(s3, style: TextStyle(color: Colors.blue, fontSize: 14)),
          ),
          TextButton(
            onPressed: () {
              window.open('https://zenn.dev/tk_design_noel', '');
            },
            child: Text(s4, style: TextStyle(color: Colors.blue, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
