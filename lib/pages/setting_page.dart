import 'package:atomic_mov_flutter/widget/atom/atom.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Stack(
        children: [
          new ToggleSwitch(name: "Light Mode"),
          Align(alignment: Alignment(0, 0.85), child: new Copyright())
        ],
      ),
    );
  }
}
