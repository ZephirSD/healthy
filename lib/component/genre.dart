import 'package:flutter/material.dart';

class SelectGenre extends StatelessWidget {
  final IconData icon;
  final String text;
  SelectGenre(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: 120,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 25),
        )
      ],
    );
  }
}
