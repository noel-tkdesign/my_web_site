import 'package:flutter/material.dart';
import 'package:my_web_site/sections/portfolio/portfolio_section.dart';

class DownMenu extends StatelessWidget {
  const DownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.clear))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background4.png'),
            fit: BoxFit.cover,
          )),
          child: Container(
            width: double.infinity,
            height: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '"Home"',
                    style: TextStyle(fontSize: 80, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '"Profile"',
                    style: TextStyle(fontSize: 80, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '"Portofolio"',
                    style: TextStyle(fontSize: 80, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '"Community"',
                    style: TextStyle(fontSize: 80, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '"Contact"',
                    style: TextStyle(fontSize: 80, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
