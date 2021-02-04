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
      child: ClipRRect(
        borderRadius: new BorderRadius.all(Radius.circular(5)),
        child: new Image.network(
          (movie != null)
              ? "https://image.tmdb.org/t/p/w500/" + movie.poster
              : "https://pro-vape.eu/wp-content/uploads/woocommerce-placeholder-600x600.png",
        ),
      ),
    );
  }
}
