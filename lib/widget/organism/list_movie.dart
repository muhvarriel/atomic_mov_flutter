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
        builder: (BuildContext context) => DetailPage(
          curMovie: movie,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (_, movieState) {
        if (movieState is MovieLoaded) {
          List<Movie> movies = movieState.movies;

          return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: movies.length,
              itemBuilder: (_, index) => Container(
                    child: new CardMovie(
                      movies[index],
                      onTap: () {
                        movieDetail(context, movies[index]);
                      },
                    ),
                  ));
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
