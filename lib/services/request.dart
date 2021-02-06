part of 'services.dart';

class GetMovie {
  static Future<List<Movie>> getMovies(int page, {http.Client client}) async {
    String url =
        "https://api.themoviedb.org/3/discover/movie?api_key=d6bf8d0722c9b8c4a475e90bba07ce48&language=en-US&sort_by=popularity.desc&include_adult=true&include_video=true&page=$page";

    client ??= http.Client();

    var response = await client.get(url);

    if (response.statusCode != 200) {
      return [];
    }

    var data = json.decode(response.body);
    List result = data['results'];

    return result.map((e) => Movie.fromJson(e)).toList();
  }

  static Future<MovieDetail> getDetails(Movie movie,
      {int movieID, http.Client client}) async {
    String url =
        "https://api.themoviedb.org/3/movie/${movieID ?? movie.id}?api_key=d6bf8d0722c9b8c4a475e90bba07ce48&language=en-US";

    client ??= http.Client();

    var response = await client.get(url);
    var data = json.decode(response.body);

    List genres = (data as Map<String, dynamic>)['genres'];

    return movieID != null
        ? MovieDetail(Movie.fromJson(data),
            genres: genres
                .map((e) => (e as Map<String, dynamic>)['name'].toString())
                .toList())
        : MovieDetail(movie,
            genres: genres
                .map((e) => (e as Map<String, dynamic>)['name'].toString())
                .toList());
  }

  static Future<List<MovieVideo>> getVideos(int id,
      {http.Client client}) async {
    String url =
        "https://api.themoviedb.org/3/movie/$id/videos?api_key=d6bf8d0722c9b8c4a475e90bba07ce48&language=en-US";

    client ??= http.Client();

    var response = await client.get(url);
    var data = json.decode(response.body);

    return ((data as Map<String, dynamic>)['results'] as List)
        .map((e) => MovieVideo(key: (e as Map<String, dynamic>)['key']))
        .toList();
  }
}
