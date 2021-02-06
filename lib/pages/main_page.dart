import 'package:atomic_mov_flutter/widget/atom/atom.dart';
import 'package:atomic_mov_flutter/widget/organism/organism.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(24, 24, 24, 5),
              child: Text(
                "Movies",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Text(
                "Watch much easier",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontSize: 15, color: Color(0xFF66667C)),
              ),
            ),
            SizedBox(
              height: 250,
              child: new ListMovieBig(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 5),
              child: Text(
                "Latest Movies",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 290,
              child: new ListMovie(),
            ),
          ],
        ),
        floatingActionButton: FloatingBtn(
          icon: Icons.settings,
        ));
  }
}
