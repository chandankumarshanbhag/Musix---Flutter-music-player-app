import 'package:flutter/material.dart';
import 'package:musix/screens/player.dart';

class BottomMusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
          child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(40, 20),
            topRight: Radius.elliptical(40, 20),
          ),
        ),
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Player()));
              },
              leading: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Hero(
                    tag: "player-poster",
                    child: Image.asset("assets/Something_Just_Like_This.png")),
              ),
              title: Text("Something Just Like This"),
              subtitle: Text("The Chainsmokers & Coldplay"),
              trailing: Container(
                width: 40,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                          value: 0.4,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).primaryColor)),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.pause,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
