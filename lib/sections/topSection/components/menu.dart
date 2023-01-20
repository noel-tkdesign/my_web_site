import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    'Home',
    'Profile',
    'Portfolio',
    'Recommendation',
    'Contact'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      constraints: BoxConstraints(maxWidth: 900),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(
          10,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 5, 110, 175).withOpacity(0.15),
            offset: Offset(0, 50),
            blurRadius: 50.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              //Hover
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -20 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              //Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -8 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );
}
