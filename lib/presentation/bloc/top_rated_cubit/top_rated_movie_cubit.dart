import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'top_rated_movie_state.dart';

class TopRatedMovieCubit extends Cubit<TopRatedMovieState> {
  TopRatedMovieCubit() : super(TopRatedMovieInitial());
}
