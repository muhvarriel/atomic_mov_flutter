part of 'models.dart';

class Movie extends Equatable {
  final String id;
  final String lang;
  final String title;
  final String overview;
  final String poster;
  final String date;

  Movie(
      {@required this.id,
      @required this.lang,
      @required this.title,
      @required this.overview,
      @required this.poster,
      @required this.date});

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
      id: json['id'].toString(),
      lang: json['original_language'],
      title: json['original_title'],
      overview: json['overview'],
      poster: json['poster_path'],
      date: json['release_date']);

  @override
  List<Object> get props => [id, lang, title, overview, poster, date];
}
