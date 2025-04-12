part of 'top_rated_movie_cubit.dart';

sealed class TopRatedMovieState extends Equatable {
  const TopRatedMovieState();

  @override
  List<Object> get props => [];
}

final class TopRatedMovieInitial extends TopRatedMovieState {}

class TopRatedMovieLoading extends TopRatedMovieState {}

class TopRatedMovieLoaded extends TopRatedMovieState {
  const TopRatedMovieLoaded({required this.movies});

  final List<MovieEntity> movies;
}

class TopRatedMovieError extends TopRatedMovieState {}
