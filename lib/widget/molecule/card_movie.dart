part of 'molecule.dart';

class CardMovie extends StatelessWidget {
  final Movie movie;
  final Function onTap;

  CardMovie(this.movie, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            children: [
              new ImageMovie(
                movie,
                width: 100.0,
              ),
              SizedBox(
                width: 20,
              ),
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
                      height: 10,
                    ),
                    new DateMovie(
                      movie,
                      size: 15.0,
                    ),
                    SizedBox(
                      height: 30,
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
    );
  }
}
