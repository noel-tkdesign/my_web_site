import 'package:flutter/material.dart';
import 'package:my_web_site/components/section_title.dart';

class PortfolioFlutter extends StatefulWidget {
  const PortfolioFlutter({super.key});

  @override
  State<PortfolioFlutter> createState() => _PortfolioFlutterState();
}

class _PortfolioFlutterState extends State<PortfolioFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/nagareru.png'),
            ),
            color: Color(0xFFE8F0F9),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 100.0),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: SectionTitle(
                      title: 'Flutter App(IOS & Android)',
                      subtitle: 'Flutter',
                      color: Color(
                        0xFFFFB100,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset('assets/images/Flutterapp.png'),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '概要',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          '現在製作中',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 35,
                          width: 3,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '使用フレームワーク',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Flutter',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
