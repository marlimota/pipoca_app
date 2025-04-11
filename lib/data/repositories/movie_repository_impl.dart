import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pipoca_app/core/erros/failure.dart';
import 'package:pipoca_app/data/datasources/movie_datasource.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDatasource movieDatasource;

  MovieRepositoryImpl({required this.movieDatasource});

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    try {
      final result = await movieDatasource.getPopularMovies();
      return Right(result);
    } on DioException catch (e) {
      return Left(NetworkException.fromDioError(e) as Failure);
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async {
    try {
      final result = await movieDatasource.getTopRatedMovies();
      return Right(result);
    } on DioException catch (e) {
      return Left(NetworkException.fromDioError(e) as Failure);
    }
  }
}
