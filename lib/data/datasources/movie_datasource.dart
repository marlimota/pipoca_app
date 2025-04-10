import 'package:dio/dio.dart';
import 'package:pipoca_app/core/consts/api_endpoints.dart';
import 'package:pipoca_app/data/models/movie_model.dart';

abstract class MovieDatasource {
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<MovieModel>> getPopularMovies();
}

class MovieDatasourceImpl implements MovieDatasource {
  final Dio dio;
  List<MovieModel> movies = [];

  MovieDatasourceImpl(this.dio);

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    try {
      final response = await dio.get(
        ApiConsts.popularMoviesUrl,
        options: Options(headers: {"Authorization": ApiConsts.token}),
      );
      final results = response.data['results'];

      for (Map<String, dynamic> movieJson in results) {
        final model = MovieModel.fromJson(movieJson);
        movies.add(model);
      }
      return movies;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    try {
      final response = await dio.get(
        ApiConsts.topRatedMoviesUrl,
        options: Options(headers: {"Authorization": ApiConsts.token}),
      );
      final results = response.data['results'];
      for (Map<String, dynamic> movieJson in results) {
        final model = MovieModel.fromJson(movieJson);
        movies.add(model);
      }
      return movies;
    } catch (error) {
      throw Exception(error);
    }
  }
}
