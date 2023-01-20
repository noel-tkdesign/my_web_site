import 'package:flutter/material.dart';
import 'package:my_web_site/models/Service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: 40),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                color: Color(0xFF0700B1).withOpacity(0.15),
                offset: Offset(0, 50),
                blurRadius: 50.0,
              ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(30),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 20),
                      blurRadius: 30.0,
                    ),
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20),
            Text(
              services[widget.index].title,
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
