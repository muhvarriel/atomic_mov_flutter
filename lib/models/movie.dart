part of 'models.dart';

class Movie extends Equatable {
  final int id;
  final String lang;
  final String title;
  final String overview;
  final String poster;
  final String date;
  final double voteAverage;
  final String backdropPath;

  Movie(
      {@required this.id,
      @required this.lang,
      @required this.title,
      @required this.overview,
      @required this.poster,
      @required this.date,
      @required this.voteAverage,
      @required this.backdropPath});

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
      id: json['id'],
      lang: json['original_language'],
      title: json['original_title'],
      overview: json['overview'],
      poster: json['poster_path'],
      date: json['release_date'],
      voteAverage: (json['vote_average'] as num).toDouble(),
      backdropPath: json['backdrop_path']);

  @override
  List<Object> get props =>
      [id, lang, title, overview, poster, date, voteAverage, backdropPath];
}
