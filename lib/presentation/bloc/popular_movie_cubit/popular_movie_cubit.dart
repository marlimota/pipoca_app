import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pipoca_app/core/erros/failure.dart';
import 'package:pipoca_app/data/datasources/movie_datasource.dart';
import 'package:pipoca_app/data/repositories/movie_repository_impl.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/domain/repositories/movie_repository.dart';
import 'package:pipoca_app/injection.dart';

part 'popular_movie_state.dart';

class PopularMovieCubit extends Cubit<PopularMovieState> {
  PopularMovieCubit() : super(PopularMovieInitial()) {
    getPopularMovies();
  }

  Future<void> getPopularMovies() async {
    emit(PopularMovieLoading());

    final MovieRepository repository = MovieRepositoryImpl(
      movieDatasource: sl<MovieDatasource>(),
    );

    Either<Failure, List<MovieEntity>> movies =
        await repository.getPopularMovies();

    movies.fold(
      (failure) => emit(PopularMovieError()),
      (movies) => emit(PopularMovieLoaded(movies: movies)),
    );
  }
}
