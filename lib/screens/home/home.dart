import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:musix/screens/home/albums.dart';
import 'package:musix/screens/home/artists.dart';
import 'package:musix/screens/home/playlists.dart';
import 'package:musix/screens/home/songs.dart';
import 'package:musix/widgets/app_bar.dart';
import 'package:musix/widgets/bottom_music_player.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar:
            PreferredSize(preferredSize: Size(_width, 140), child: Appbar()),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      ),
                    ),
                    child: Songs(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      ),
                    ),
                    child: Albumbs(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      ),
                    ),
                    child: Artists(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      ),
                    ),
                    child: Playlists(),
                  ),
                ],
              ),
            ),
            BottomMusicPlayer()
          ],
        ),
      ),
    );
  }
}
