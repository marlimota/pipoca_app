import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pipoca_app/data/datasources/movie_datasource.dart';
import 'package:pipoca_app/data/repositories/movie_repository_impl.dart';
import 'package:pipoca_app/domain/repositories/movie_repository.dart';
import 'package:pipoca_app/domain/usecases/get_movie_usecase.dart';
import 'package:pipoca_app/presentation/bloc/popular_movie_cubit/popular_movie_cubit.dart';
import 'package:pipoca_app/presentation/bloc/top_rated_cubit/top_rated_movie_cubit.dart';

final sl = GetIt.instance;

void init() {
  //Bloc
  sl.registerFactory(() => PopularMovieCubit());
  sl.registerFactory(() => TopRatedMovieCubit());

  //Usecase
  sl.registerLazySingleton(() => GetMovieUsecase(repository: sl()));

  //Repository
  sl.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(movieDatasource: sl()),
  );

  //DataSource
  sl.registerLazySingleton<MovieDatasource>(
    () => MovieDatasourceImpl(dio: sl()),
  );

  //External
  sl.registerLazySingleton(() => Dio());
}
