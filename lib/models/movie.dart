part of 'models.dart';

class Movie {
  String id;
  String lang;
  String title;
  String overview;
  String poster;
  String date;

  Movie(
      {this.id, this.lang, this.title, this.overview, this.poster, this.date});

  factory Movie.createMovie(Map<String, dynamic> object) {
    return Movie(
        id: object['id'].toString(),
        lang: object['original_language'],
        title: object['original_title'],
        overview: object['overview'],
        poster: object['poster_path'],
        date: object['release_date']);
  }
}
