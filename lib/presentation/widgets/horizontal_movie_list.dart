import 'package:flutter/material.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/presentation/widgets/movie_card.dart';

class HorizontalMovieList extends StatelessWidget {
  final List<MovieEntity> movieList;
  const HorizontalMovieList({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: movieList.map((e) => MovieCard(movie: e)).toList(),
      ),
    );
  }
}
