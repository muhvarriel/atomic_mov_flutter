part of 'organism.dart';

class ListMovie extends StatefulWidget {
  @override
  _ListMovieState createState() => _ListMovieState();
}

class _ListMovieState extends State<ListMovie> {
  StreamController<int> streamController = new StreamController<int>();

  movieList(AsyncSnapshot<List<Movie>> snapshot) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: ListView(
        children: snapshot.data.map(
          (movie) {
            return GestureDetector(
              child: CardMovie(movie),
              onTap: () {
                movieDetail(context, movie);
              },
            );
          },
        ).toList(),
      ),
    );
  }

  movieDetail(BuildContext context, Movie movie) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) => DetailPage(
          curMovie: movie,
        ),
      ),
    );
  }

  circularProgress() {
    return Center(
      child: const CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>>(
      future: GetMovie.getMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        }
        if (snapshot.hasData) {
          streamController.sink.add(snapshot.data.length);
          return movieList(snapshot);
        }

        return circularProgress();
      },
    );
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }
}
