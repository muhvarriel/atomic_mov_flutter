import 'package:atomic_mov_flutter/models/models.dart';
import 'package:atomic_mov_flutter/widget/atom/atom.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Movie curMovie;
  DetailPage({@required this.curMovie});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  new ImageMovie(
                    widget.curMovie,
                    width: 100.0,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  new TitleMovie(
                    widget.curMovie,
                    size: 25.0,
                  ),
                  new DecsMovie(
                    widget.curMovie,
                    size: 15.0,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment(0, 0.85), child: new BackButtonCustom())
        ],
      ),
    );
  }
}
