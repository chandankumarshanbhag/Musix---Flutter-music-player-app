import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
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
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      ),
                    ),
                    child: Playlist(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      ),
                    ),
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

class Playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Create a playlist",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                IconButton(icon: Icon(LineIcons.plus), onPressed: () {})
              ],
            ),
          ),
          Expanded(
                      child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext, int) {
                  return ListTile(
                    leading: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,child: Image.asset("assets/Something_Just_Like_This.png")),
                    title: Text("Hello"),
                    subtitle: Text("HBdegwfjaskj"),
                    trailing: IconButton(icon: Icon(LineIcons.horizontalEllipsis), onPressed: (){}),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
