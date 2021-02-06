part of 'atom.dart';

class FloatingBtn extends StatelessWidget {
  final icon;

  FloatingBtn({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SettingPage(),
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
