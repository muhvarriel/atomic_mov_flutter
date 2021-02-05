part of 'molecule.dart';

class CardMovie extends StatelessWidget {
  const CardMovie(this.movie);
  @required
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
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
                new DateMovie(
                  movie,
                  size: 15.0,
                ),
                SizedBox(
                  height: 20,
                ),
                new LangMovie(
                  movie,
                  size: 15.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
