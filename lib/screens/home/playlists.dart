import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Playlists extends StatelessWidget {
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