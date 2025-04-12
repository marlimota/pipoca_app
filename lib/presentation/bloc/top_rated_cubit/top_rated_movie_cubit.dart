import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pipoca_app/core/erros/failure.dart';
import 'package:pipoca_app/data/datasources/movie_datasource.dart';
import 'package:pipoca_app/data/repositories/movie_repository_impl.dart';
import 'package:pipoca_app/domain/entities/movie_entity.dart';
import 'package:pipoca_app/domain/repositories/movie_repository.dart';
import 'package:pipoca_app/injection.dart';

part 'top_rated_movie_state.dart';

class TopRatedMovieCubit extends Cubit<TopRatedMovieState> {
  TopRatedMovieCubit() : super(TopRatedMovieInitial()) {
    topRatedMovies();
  }

  Future<void> topRatedMovies() async {
    emit(TopRatedMovieLoading());

    final MovieRepository repository = MovieRepositoryImpl(
      movieDatasource: sl<MovieDatasource>(),
    );

    Either<Failure, List<MovieEntity>> movies =
        await repository.getTopRatedMovies();

    movies.fold(
      (failure) => emit(TopRatedMovieError()),
      (movies) => emit(TopRatedMovieLoaded(movies: movies)),
    );
  }
}
