import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_web_site/components/default_button.dart';

class MobileGoogleForms extends StatelessWidget {
  const MobileGoogleForms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      //constraints: BoxConstraints(maxWidth: 600),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 5, 110, 175).withOpacity(0.15),
            offset: Offset(0, 50),
            blurRadius: 50.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/email.png',
                height: 25,
                width: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 25,
                  child: VerticalDivider(),
                ),
              ),
              Text(
                'ご意見ご感想はGoogleFormsまで ',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(width: 20),
          SizedBox(
            width: 250,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[50],
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  window.open('https://forms.gle/QfwP9qQoQqCFikoSA', '');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/googleforms.png',
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "GoogleFormsに移動",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 8.0,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
