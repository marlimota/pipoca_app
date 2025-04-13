import 'package:flutter/material.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/presentation/widgets/movie_card.dart';

class VerticalMovieList extends StatelessWidget {
  final List<MovieEntity> movieList;
  const VerticalMovieList({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 0.7,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movieList[index]);
        },
      ),
    );
  }
}
