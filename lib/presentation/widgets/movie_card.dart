import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber[400],
        image: DecorationImage(
          image: NetworkImage(''),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(120, 174, 174, 173),
            spreadRadius: 1.5,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          'Filme',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 0.5,
            shadows: [
              Shadow(
                blurRadius: 16.0,
                color: Colors.black,
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
