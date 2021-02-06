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
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(5)),
        ),
        child: Card(
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
          ),
        ),
      ),
    );
  }
}
