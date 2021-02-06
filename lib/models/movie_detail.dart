part of 'models.dart';

class MovieDetail extends Movie {
  final List<String> genres;

  MovieDetail(Movie movie, {this.genres})
      : super(
            id: movie.id,
            lang: movie.lang,
            title: movie.title,
            overview: movie.overview,
            poster: movie.poster,
            date: movie.date,
            voteAverage: movie.voteAverage,
            backdropPath: movie.backdropPath);

  String get genresAll {
    String s = "";

    for (var genre in genres) {
      s += genre + (genre != genres.last ? ', ' : '');
    }

    return "$s";
  }

  @override
  List<Object> get props => super.props + [genres];
}
