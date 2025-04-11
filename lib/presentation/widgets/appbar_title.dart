import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/caixa-de-pipoca.png', height: 32),
        SizedBox(width: 10),
        Text(
          'Pipoca Filmes',
          style: TextStyle(color: Colors.amber[400], fontFamily: 'Nexa'),
        ),
      ],
    );
  }
}
