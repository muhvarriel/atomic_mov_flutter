part of 'atom.dart';

class FloatingBtn extends StatelessWidget {
  final icon;
  final page;

  FloatingBtn({Key key, this.icon, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => this.page,
        ));
      },
      child: Icon(
        this.icon,
        color: Colors.white,
      ),
      backgroundColor: secondaryColor,
    );
  }
}
