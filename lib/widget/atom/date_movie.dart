part of 'atom.dart';

class DateMovie extends StatelessWidget {
  final size;

  const DateMovie(this.movie, {Key key, this.size}) : super(key: key);
  @required
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Text((movie != null) ? movie.date : "Tidak ada data",
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(fontSize: this.size));
  }
}
