import 'package:flutter/material.dart';
import 'package:my_web_site/models/RecentWorks.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);
  final int index;
  final Function() press;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 200,
        ),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                color: Color.fromARGB(255, 5, 110, 175).withOpacity(0.15),
                offset: Offset(0, 50),
                blurRadius: 50.0,
              ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recentWorks[widget.index].category.toUpperCase()),
                  SizedBox(height: 40),
                  Text(
                    recentWorks[widget.index].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(height: 1.5),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'View Details',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
