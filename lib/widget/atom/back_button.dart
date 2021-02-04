part of 'atom.dart';

class BackButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 150.0,
      height: 60.0,
      child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child:
              Text("Back", style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.purple,
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
