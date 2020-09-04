import 'package:flutter/material.dart';
import 'package:songbook_flutter/components/song_toolbar.dart';
import 'package:songbook_flutter/constants.dart';

class SongMenu extends StatefulWidget {
  @override
  _SongMenuState createState() => _SongMenuState();
}

class _SongMenuState extends State<SongMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding:
              EdgeInsets.only(top: kSongToolbarHeight - kToolbarBorderRadius),
          color: Colors.green,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        SongToolbar(),
      ]),
    );
  }
}