part of 'atom.dart';

class TitleMovie extends StatelessWidget {
  final size;

  const TitleMovie(this.movie, {Key key, this.size}) : super(key: key);
  @required
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Text(
      (movie != null) ? movie.title : "Tidak ada data",
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: this.size),
    );
  }
}
