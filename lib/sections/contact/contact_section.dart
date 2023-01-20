import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_web_site/components/default_button.dart';
import 'package:my_web_site/components/section_title.dart';
import 'package:my_web_site/constants.dart';
import 'package:my_web_site/sections/contact/components/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxHeight: 1100, minHeight: 700),

      /* decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/irokage386.png'),
        ),
      ),*/
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: SectionTitle(
              title: 'Contact',
              subtitle: 'お問い合わせはこちら',
              color: Color(0xFF07E24A),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: ContactBox(),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      height: 800,
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          /* Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFFD9FFFC),
                iconSrc: 'assets/images/skype.png',
                name: 'The Flutter Way',
                press: () {},
              ),
              SocalCard(
                color: Color(0xFFE4FFC7),
                iconSrc: 'assets/images/whatsapp.png',
                name: 'The Flutter Way',
                press: () {},
              ),
              SocalCard(
                color: Color(0xFFE8F0F9),
                iconSrc: 'assets/images/messanger.png',
                name: 'The Flutter Way',
                press: () {},
              ),
            ],
          ),*/

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/images/70229-contact-us.json',
                height: 100,
                width: 100,
              ),
              Text(
                'ご意見、ご感想はコチラ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            width: 800,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outlined,
                ),
                labelText: 'お名前',
                hintText: '名前を入力してください',
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 800,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                ),
                labelText: 'メールアドレス',
                hintText: 'メールアドレスを入力してください',
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 800,
            child: TextFormField(
              maxLines: 6,
              minLines: 6,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'コメント',
                hintText: 'ご要望、ご感想を入力してください',
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: 'assets/images/email.png',
                text: '送信',
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
