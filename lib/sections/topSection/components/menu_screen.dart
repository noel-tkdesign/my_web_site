import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xFFE8F0F9),
            image: DecorationImage(
              image: AssetImage('assets/images/nagareru.png'),
              fit: BoxFit.cover,
            )),
        child: Container(
          width: double.infinity,
          height: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  '"Home"',
                  style: TextStyle(fontSize: 60, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  '"Profile"',
                  style: TextStyle(fontSize: 60, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  '"Development"',
                  style: TextStyle(fontSize: 60, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  '"Portofolio"',
                  style: TextStyle(fontSize: 60, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  '"Community"',
                  style: TextStyle(fontSize: 60, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  '"Contact"',
                  style: TextStyle(fontSize: 60, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
