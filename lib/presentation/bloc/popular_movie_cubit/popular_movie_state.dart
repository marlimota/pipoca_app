part of 'popular_movie_cubit.dart';

sealed class PopularMovieState extends Equatable {
  const PopularMovieState();

  @override
  List<Object> get props => [];
}

class PopularMovieInitial extends PopularMovieState {}

class PopularMovieLoading extends PopularMovieState {}

class PopularMovieLoaded extends PopularMovieState {
  const PopularMovieLoaded({required this.movies});

  final List<MovieEntity> movies;
}

class PopularMovieError extends PopularMovieState {}
