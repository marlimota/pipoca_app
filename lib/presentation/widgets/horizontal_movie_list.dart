import 'package:flutter/material.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/presentation/widgets/movie_card.dart';

class HorizontalMovieList extends StatelessWidget {
  final List<MovieEntity> movieList;
  const HorizontalMovieList({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: movieList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 14),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MovieCard(movie: movieList[index]),
          );
        },
      ),
    );
  }
}
