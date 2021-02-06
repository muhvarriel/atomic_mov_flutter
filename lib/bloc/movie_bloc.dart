import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:atomic_mov_flutter/models/models.dart';
import 'package:atomic_mov_flutter/services/services.dart';
import 'package:equatable/equatable.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(MovieInitial());

  @override
  Stream<MovieState> mapEventToState(
    MovieEvent event,
  ) async* {
    if (event is FetchMovies) {
      List<Movie> movies = await GetMovie.getMovies(1);

      yield MovieLoaded(
          movies: movies
              .where((element) =>
                  !element.title.toLowerCase().contains('365') &&
                  !element.title.toLowerCase().contains('bois'))
              .toList());
    }
  }
}
