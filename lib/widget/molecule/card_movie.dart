part of 'molecule.dart';

class CardMovie extends StatelessWidget {
  final Movie movie;
  final Function onTap;
  final imageSize, titleSize, dateSize;

  const CardMovie(this.movie,
      {Key key, this.onTap, this.imageSize, this.titleSize, this.dateSize})
      : super(key: key);

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
                width: this.imageSize,
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
                      size: this.titleSize,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    new DateMovie(
                      movie,
                      size: this.dateSize,
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
