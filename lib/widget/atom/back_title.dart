part of 'atom.dart';

class BackTitle extends StatelessWidget {
  final String title;

  const BackTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
      child: Row(
        children: [
          new GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
          SizedBox(
            width: 20,
          ),
          Text(
            this.title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
