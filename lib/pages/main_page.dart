import 'package:atomic_mov_flutter/pages/setting_page.dart';
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
          title: Text('Home'),
        ),
        body: Container(
          child: new ListMovie(),
        ),
        floatingActionButton: SettingsButton());
  }
}
