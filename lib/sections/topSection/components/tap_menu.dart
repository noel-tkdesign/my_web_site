import 'package:flutter/material.dart';

class TapMenu extends StatelessWidget {
  const TapMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return Colors.grey;

              return Colors.black; // null throus error in flutter 2.2+.
            }),
          ),
          onPressed: () {},
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) return Colors.red;
              if (states.contains(MaterialState.hovered)) return Colors.grey;
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.black; // null throus error in flutter 2.2+.
            }),
          ),
          onPressed: () {},
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) return Colors.red;
              if (states.contains(MaterialState.hovered)) return Colors.grey;
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.black; // null throus error in flutter 2.2+.
            }),
          ),
          onPressed: () {},
          child: Text(
            'Portfolio',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) return Colors.red;
              if (states.contains(MaterialState.hovered)) return Colors.grey;
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.black; // null throus error in flutter 2.2+.
            }),
          ),
          onPressed: () {},
          child: Text(
            'Recommendation',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) return Colors.red;
              if (states.contains(MaterialState.hovered)) return Colors.grey;
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.black; // null throus error in flutter 2.2+.
            }),
          ),
          onPressed: () {},
          child: Text(
            'Contact',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
