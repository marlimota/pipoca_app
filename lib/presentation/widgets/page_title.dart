import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;
  const PageTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Text(
        title,
        style: TextStyle(
          color: const Color.fromARGB(232, 255, 255, 255),
          fontSize: 22,
          fontFamily: 'Nexa',
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
