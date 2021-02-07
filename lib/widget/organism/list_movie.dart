part of 'organism.dart';

class ListMovie extends StatefulWidget {
  @override
  _ListMovieState createState() => _ListMovieState();
}

class _ListMovieState extends State<ListMovie> {
  movieDetail(BuildContext context, Movie movie) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) => DetailMovie(movie),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (_, movieState) {
        if (movieState is MovieLoaded) {
          List<Movie> movies = movieState.movies.sublist(10);

          return Container(
            height: double.maxFinite,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: movies.length,
                itemBuilder: (_, index) => new CardMovie(
                      movies[index],
                      onTap: () {
                        movieDetail(context, movies[index]);
                      },
                      imageSize: 100.0,
                      titleSize: 20.0,
                      dateSize: 15.0,
                    )),
          );
        } else {
          return SpinKitFadingCircle(
            color: primaryColor,
            size: 50,
          );
        }
      },
    );
  }
}
