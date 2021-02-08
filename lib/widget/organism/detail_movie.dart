part of 'organism.dart';

class DetailMovie extends StatelessWidget {
  final Movie movie;

  DetailMovie(this.movie);

  @override
  Widget build(BuildContext context) {
    List<MovieVideo> movieVideo;
    List<Credit> credits;

    return Scaffold(
      body: ListView(
        children: [
          FutureBuilder(
              future: GetMovie.getDetails(movie),
              builder: (_, snapshot) {
                return Column(
                  children: <Widget>[
                    FutureBuilder(
                        future: GetMovie.getVideos(movie.id),
                        builder: (_, snapshot) {
                          if (snapshot.hasData) {
                            movieVideo = snapshot.data;
                            return SizedBox(
                              height: 230,
                              child: ListView.builder(
                                  itemCount: movieVideo.length,
                                  itemBuilder: (_, index) => Container(
                                      child: VideoMovie(movieVideo[index]))),
                            );
                          } else {
                            return SizedBox(
                                height: 50,
                                child: SpinKitFadingCircle(
                                  color: primaryColor,
                                ));
                          }
                        }),
                    SizedBox(
                      height: 24,
                    ),
                    new BackTitle(
                      title: "Detail Movie",
                    ),
                    Container(
                      child: new CardMovie(
                        movie,
                        onTap: () {},
                        imageSize: 70.0,
                        titleSize: 20.0,
                        dateSize: 15.0,
                      ),
                    ),
                    SizedBox(
                        child: new DecsMovie(
                      movie,
                      size: 15.0,
                    )),
                    Container(
                      margin: EdgeInsets.fromLTRB(24, 24, 24, 12),
                      child: Row(
                        children: [
                          Text(
                            "Credits",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    FutureBuilder(
                        future: GetMovie.getCredits(movie.id),
                        builder: (_, snapshot) {
                          if (snapshot.hasData) {
                            credits = snapshot.data;
                            return SizedBox(
                              height: 150,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: credits.length,
                                  itemBuilder: (_, index) => Container(
                                      margin: EdgeInsets.fromLTRB(24, 0, 5, 12),
                                      child: CreditCard(credits[index]))),
                            );
                          } else {
                            return SizedBox(
                                height: 50,
                                child: SpinKitFadingCircle(
                                  color: primaryColor,
                                ));
                          }
                        }),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
