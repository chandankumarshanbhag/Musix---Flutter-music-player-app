import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:musix/widgets/tab_indecator.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        height: 120,
        color: Theme.of(context).accentColor,
        child: Column(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Musix",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            splashRadius: 20,
                            iconSize: 24,
                            icon: RotatedBox(
                                quarterTurns: 3,
                                child: Icon(LineIcons.search)),
                            onPressed: () {}),
                        IconButton(
                            splashRadius: 20,
                            iconSize: 24,
                            icon: RotatedBox(
                                quarterTurns: 3,
                                child:
                                    Icon(LineIcons.horizontalEllipsis)),
                            onPressed: () {})
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Container(
                height: 20,
                child: TabBar(
                  indicatorPadding: EdgeInsets.all(0),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Color(0xff1a73e8),
                  unselectedLabelColor: Color(0xff5f6368),
                  isScrollable: true,
                  indicator: TabIndicator(
                      indicatorHeight: 5,
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorSize: TabIndicatorType.full),
                  tabs: [
                    Container(
                      height: 20,
                      child: Tab(
                        child: Text(
                          "PLAYLISTS",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        iconMargin: EdgeInsets.all(0),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Tab(
                        child: Text(
                          "ALBUMS",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        iconMargin: EdgeInsets.all(0),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Tab(
                        child: Text(
                          "SONGS",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        iconMargin: EdgeInsets.all(0),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Tab(
                        child: Text(
                          "ARTISTS",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        iconMargin: EdgeInsets.all(0),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}