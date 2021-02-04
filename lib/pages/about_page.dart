import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("About App"),
      ),
      body: Center(
        child: Text("Copyright 2021 Varriel"),
      ),
    );
  }
}
