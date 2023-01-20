import 'package:flutter/material.dart';
import 'package:my_web_site/models/Portfolio.dart';

class TabletPortfolioCard extends StatefulWidget {
  const TabletPortfolioCard(
      {super.key, required this.index, required this.press});
  final int index;
  final Function() press;

  @override
  State<TabletPortfolioCard> createState() => _TabletPortfolioCardState();
}

class _TabletPortfolioCardState extends State<TabletPortfolioCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => portfolio[widget.index].view,
          ),
        );
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 2000,
        ),
        height: 200,
        width: 200,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  portfolio[widget.index].image,
                  height: isHover ? 200 : 150,
                  width: isHover ? 200 : 150,
                ),
                if (isHover)
                  Positioned(
                    top: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        portfolio[widget.index].category,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                Positioned(
                  right: -10,
                  bottom: 0,
                  child: Text(
                    isHover ? '' : '詳しく見る＞＞',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
