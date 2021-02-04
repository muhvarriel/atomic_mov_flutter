part of 'atom.dart';

class AboutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AboutPage();
        }));
      },
      child: Icon(Icons.error),
      backgroundColor: Colors.purple,
    );
  }
}
