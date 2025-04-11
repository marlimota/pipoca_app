import 'package:flutter/material.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/presentation/widgets/movie_card.dart';

class VerticalMovieList extends StatelessWidget {
  final List<MovieEntity> movieList;
  const VerticalMovieList({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [MovieCard()],
      ),
    );
  }
}
