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
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          Container(margin: EdgeInsets.all(8), color: Colors.amber[400]),
          Container(margin: EdgeInsets.all(8), color: Colors.amber[400]),
          Container(margin: EdgeInsets.all(8), color: Colors.amber[400]),
          Container(margin: EdgeInsets.all(8), color: Colors.amber[400]),
        ],
      ),
    );
  }
}
