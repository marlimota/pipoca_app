import 'package:dartz/dartz.dart';
import 'package:pipoca_app/core/erros/failure.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();
}
