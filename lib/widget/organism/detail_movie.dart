part of 'organism.dart';

class DetailMovie extends StatelessWidget {
  final Movie movie;

  DetailMovie(this.movie);

  @override
  Widget build(BuildContext context) {
    MovieDetail movieDetail;
    List<MovieVideo> movieVideo;

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
                              height: 200,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
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
                    Container(
                      margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
                      child: Row(
                        children: [
                          new GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back)),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Detail Movie",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Row(
                          children: [
                            new ImageMovie(
                              movie,
                              width: 70.0,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new TitleMovie(
                                    movie,
                                    size: 20.0,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  new DateMovie(
                                    movie,
                                    size: 15.0,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  new RatingStars(
                                    voteAverage: movie.voteAverage,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        child: new DecsMovie(
                      movie,
                      size: 15.0,
                    )),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
