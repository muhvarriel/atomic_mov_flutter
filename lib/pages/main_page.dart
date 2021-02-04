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
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Menu"),
        ),
        body: Container(
          child: new ListMovie(),
        ),
        floatingActionButton: AboutButton());
  }
}
