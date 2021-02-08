part of 'molecule.dart';

class CardMovieBig extends StatelessWidget {
  final Movie movie;
  final Function onTap;

  CardMovieBig(this.movie, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            children: [
              new ImageMovieBig(
                movie,
                width: 320.0,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 220,
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
                      ],
                    ),
                  ),
                  new RatingStars(
                    voteAverage: movie.voteAverage,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
