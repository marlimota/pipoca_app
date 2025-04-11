import 'package:dartz/dartz.dart';
import 'package:pipoca_app/core/erros/failure.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/domain/repositories/movie_repository.dart';

class GetMovieUsecase {
  final MovieRepository repository;

  GetMovieUsecase({required this.repository});

  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async {
    return await repository.getTopRatedMovies();
  }

  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    return await repository.getPopularMovies();
  }
}
