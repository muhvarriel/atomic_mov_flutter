import 'package:atomic_mov_flutter/widget/atom/atom.dart';
import 'package:flutter/material.dart';

import '../widget/atom/atom.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 24,
              ),
              new BackTitle(
                title: "Settings",
              ),
              new ToggleSwitch(name: "Light Mode"),
            ],
          ),
          Align(alignment: Alignment(0, 0.85), child: new Copyright())
        ],
      ),
    );
  }
}
