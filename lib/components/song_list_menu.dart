import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songbook_flutter/components/song_item_widget.dart';
import 'package:songbook_flutter/models/song_data.dart';
import 'package:songbook_flutter/screens/song_display.dart';
import '../constants.dart';

class SongListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double topPadding;
    return ListView.builder(
      itemCount: Provider.of<SongData>(context).songs.length,
      itemBuilder: (context, i) {
        if (i == 0) {
          topPadding = kToolbarBorderRadius;
        } else {
          topPadding = 0;
        }
        return Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: GestureDetector(
            onTap: () {
              print('list pressed');
              Provider.of<SongData>(context, listen: false).openSong(i);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SongDisplay();
                }),
              );
            },
            child: SongItemWidget(
              songItem: Provider.of<SongData>(context).songs[i],
            ),
          ),
        );
      },
    );
  }
}
