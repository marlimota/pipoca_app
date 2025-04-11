import 'package:flutter/material.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';

class VerticalMovieList extends StatelessWidget {
  final List<MovieEntity> movieList;
  const VerticalMovieList({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Container(margin: EdgeInsets.all(12), color: Colors.amber[400]),
          Container(margin: EdgeInsets.all(12), color: Colors.amber[400]),
          Container(margin: EdgeInsets.all(12), color: Colors.amber[400]),
          Container(margin: EdgeInsets.all(12), color: Colors.amber[400]),
        ],
      ),
    );
  }
}
