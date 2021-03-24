part of 'atom.dart';

class ImageMovie extends StatelessWidget {
  final width;

  const ImageMovie(this.movie, {Key key, this.width}) : super(key: key);

  @required
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: 150,
      child: ClipRRect(
        borderRadius: new BorderRadius.all(Radius.circular(15)),
        child: new Image.network(
          (movie != null)
              ? "https://image.tmdb.org/t/p/w500/" + movie.poster
              : AssetImage("assets/empty.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
