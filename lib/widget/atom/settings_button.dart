part of 'atom.dart';

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SettingPage(),
        ));
      },
      child: Icon(Icons.settings),
      backgroundColor: secondaryColor,
    );
  }
}
