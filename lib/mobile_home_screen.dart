import 'package:flutter/material.dart';
import 'package:my_web_site/components/bottom_bar_column.dart';
import 'package:my_web_site/components/info_text.dart';
import 'package:my_web_site/sections/development/mobile_development_slider.dart';
import 'package:my_web_site/sections/portfolio/mobile_portfolio_section.dart';
import 'package:my_web_site/sections/profile/mobile_profile.dart';
import 'package:my_web_site/sections/topSection/mobile_top_section.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
      ),
      extendBodyBehindAppBar: true,
      drawer: Container(
        width: 300,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Drawer(
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background4.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/tkdesign.png',
                            height: 150,
                            width: 150,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text('"Home"'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MobileHomeScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text('"Profile"'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MobileProfile()),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text('"Development"'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MobileDevelopmentSlider()),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text('"Portofolio"'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text('"Community"'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text('"Contact"'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background4.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      BottomBarColumn(
                        heading: 'SOCIAL',
                        s1: 'GitHub',
                        s2: 'Twitter',
                        s3: 'Qiita',
                        s4: 'Zen',
                      ),
                      SizedBox(height: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InfoText(
                                type: 'Email',
                                text: 'tkworksdesign@gmail.com',
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.blueGrey,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Copyright © 2022 | tkworksdesign',
                        style: TextStyle(
                          color: Colors.blueGrey[200],
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: MobileDevelopmentSlider(),
      ),
    );
  }
}
