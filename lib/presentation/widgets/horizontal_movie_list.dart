import 'package:flutter/material.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';

class HorizontalMovieList extends StatelessWidget {
  final List<MovieEntity> movieList;
  const HorizontalMovieList({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
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
