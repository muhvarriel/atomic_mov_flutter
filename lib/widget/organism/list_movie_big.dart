part of 'organism.dart';

class ListMovieBig extends StatefulWidget {
  @override
  _ListMovieBigState createState() => _ListMovieBigState();
}

class _ListMovieBigState extends State<ListMovieBig> {
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
    //return LoadCardBig();

    return BlocBuilder<MovieBloc, MovieState>(
      builder: (_, movieState) {
        if (movieState is MovieLoaded) {
          List<Movie> movies = movieState.movies.sublist(0, 10);

          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (_, index) => Container(
                    child: new CardMovieBig(
                      movies[index],
                      onTap: () {
                        movieDetail(context, movies[index]);
                      },
                    ),
                  ));
        } else {
          return LoadCardBig();
          /*
          return SpinKitFadingCircle(
            color: primaryColor,
            size: 50,
          );
          */
        }
      },
    );
  }
}
