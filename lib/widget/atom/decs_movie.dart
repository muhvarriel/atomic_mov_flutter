part of 'atom.dart';

class DecsMovie extends StatelessWidget {
  final size;

  const DecsMovie(this.movie, {Key key, this.size}) : super(key: key);
  @required
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Text((movie != null) ? movie.overview : "Tidak ada data",
          textAlign: TextAlign.justify,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: this.size)),
    );
  }
}
