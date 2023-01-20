import 'package:flutter/material.dart';
import 'package:my_web_site/models/Portfolio.dart';
import 'package:my_web_site/sections/portfolio/portfolio_timer.dart';

class PortfolioCard extends StatefulWidget {
  const PortfolioCard({super.key, required this.index, required this.press});
  final int index;
  final Function() press;
  @override
  State<PortfolioCard> createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard> {
  bool isHover = false;
  bool isTap = false;

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
        height: 320,
        width: 300,
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
                  height: isHover ? 300 : 250,
                  width: isHover ? 300 : 250,
                ),
                if (isHover)
                  Positioned(
                    top: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        portfolio[widget.index].category,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                Positioned(
                  right: 0,
                  bottom: -0,
                  child: Text(
                    isHover ? '' : '詳しく見る＞＞',
                    style: TextStyle(
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
