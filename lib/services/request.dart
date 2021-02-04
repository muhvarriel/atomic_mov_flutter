part of 'services.dart';

class GetMovie {
  static Future<List<Movie>> getMovies() async {
    try {
      final response = await http.get(
          "https://api.themoviedb.org/3/movie/now_playing?api_key=d6bf8d0722c9b8c4a475e90bba07ce48&language=en-US&page=1");
      if (response.statusCode == 200) {
        List<Movie> list = parseMovies(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Movie> parseMovies(String responseBody) {
    final parsed = jsonDecode(responseBody)['results'] as List;
    return parsed.map((json) => Movie.createMovie(json)).toList();
  }
}
