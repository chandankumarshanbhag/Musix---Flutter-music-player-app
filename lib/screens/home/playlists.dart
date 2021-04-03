import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:musix/data/playlist.dart';

class Playlists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              itemCount: playlists.length,
              itemBuilder: (BuildContext, int index) {
                return ListTile(
                  leading: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(4)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset('assets/playlists/${index+1}.jpeg')),
                  title: Text(playlists[index]["name"]),
                  subtitle: Text("John Doe"),
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
