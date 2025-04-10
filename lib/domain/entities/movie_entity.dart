import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String title;
  final String posterPath;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final double voteAverage;
  final int id;

  const MovieEntity({
    required this.title,
    required this.posterPath,
    required this.backdropPath,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
    required this.id,
  });

  @override
  List<Object?> get props {
    return [
      title,
      posterPath,
      backdropPath,
      overview,
      releaseDate,
      voteAverage,
      id,
    ];
  }
}
