import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:musix/data/top100songs.dart';
import 'package:musix/screens/player/player.dart';

class Songs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 20),
        Expanded(
          child: Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 50,
              padding: EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (BuildContext, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Player(
                              heroTag: index.toString(),
                            )));
                  },
                  leading: Container(
                    height: 60,
                    width: 60,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(4)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Hero(
                          tag: index.toString(),
                          child: Image.network(
                              "https://charts-static.billboard.com" +
                                  top100songs[index]["title_images"]["sizes"]
                                      ["x-small-2x"]["Name"],fit: BoxFit.cover,))),
                  title: Text(top100songs[index]["title"]),
                  subtitle: Text(top100songs[index]["artist_name"]),
                  trailing: IconButton(
                      icon: Icon(LineIcons.horizontalEllipsis),
                      onPressed: () {}),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
