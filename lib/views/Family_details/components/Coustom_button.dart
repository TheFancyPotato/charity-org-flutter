import 'package:flutter/material.dart';

import '../../homeScreen/home_screen.dart';

class CoustomButton extends StatelessWidget {
  CoustomButton({super.key, required this.icon, required this.color});
  IconData icon;
  Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      icon: Icon(icon),
      color: color,
    );
  }
}
