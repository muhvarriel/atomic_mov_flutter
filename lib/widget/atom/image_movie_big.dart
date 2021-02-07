part of 'atom.dart';

class ImageMovieBig extends StatelessWidget {
  final width;
  final height;

  const ImageMovieBig(this.movie, {Key key, this.width, this.height})
      : super(key: key);

  @required
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: ClipRRect(
        borderRadius: new BorderRadius.all(Radius.circular(25)),
        child: new Image.network(
          (movie != null)
              ? "https://image.tmdb.org/t/p/w500/" + movie.backdropPath
              : "https://pro-vape.eu/wp-content/uploads/woocommerce-placeholder-600x600.png",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
