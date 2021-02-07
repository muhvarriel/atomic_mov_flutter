part of 'atom.dart';

class RatingStars extends StatelessWidget {
  final double voteAverage;
  final double starSize;
  final double fontSize;
  final Color color;

  RatingStars(
      {this.voteAverage = 0,
      this.starSize = 20,
      this.fontSize = 12,
      this.color});

  @override
  Widget build(BuildContext context) {
    int n = (voteAverage / 2).round();

    List<Widget> widgets = List.generate(
        5,
        (index) => Icon(
              index < n ? MdiIcons.star : MdiIcons.starOutline,
              color: Color(0xFFFFAB2E),
              size: starSize,
            ));

    return Row(
      children: widgets,
    );
  }
}
