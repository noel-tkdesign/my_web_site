import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget TabletBody;
  final Widget desktopBody;

  ResponsiveLayout(
      {required this.mobileBody,
      required this.desktopBody,
      required this.TabletBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else if (constraints.maxWidth < 1110) {
          return TabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
