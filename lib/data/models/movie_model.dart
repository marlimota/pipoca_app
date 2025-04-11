import 'package:pipoca_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel({
    required super.title,
    required super.posterPath,
    required super.backdropPath,
    required super.overview,
    required super.releaseDate,
    required super.voteAverage,
    required super.id,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json['title'],
      posterPath: 'https://image.tmdb.org/t/p/w500' + json['poster_path'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'],
      id: json['id'],
    );
  }
}
