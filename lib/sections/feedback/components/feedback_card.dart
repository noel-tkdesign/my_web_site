import 'package:flutter/material.dart';
import 'package:my_web_site/models/Feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: 60),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
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
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 5, 110, 175).withOpacity(0.15),
                        offset: Offset(0, 50),
                        blurRadius: 50.0,
                      ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ronald Thompson',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
