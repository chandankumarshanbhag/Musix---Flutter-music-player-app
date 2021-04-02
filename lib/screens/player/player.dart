import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:musix/widgets/poster.dart';

class Player extends StatelessWidget {
  String heroTag;
  Player({this.heroTag = "player-poster"});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SafeArea(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text(
                  "Good Mood Playlist",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        color: Theme.of(context).accentColor,
                        child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(40, 20),
                                topRight: Radius.elliptical(40, 20),
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.all((8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(LineIcons.angleDown),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    splashRadius: 20,
                                  ),
                                  IconButton(
                                    icon: Icon(LineIcons.listUl),
                                    onPressed: () {},
                                    splashRadius: 20,
                                  )
                                ],
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Posters(heroTag: heroTag,)),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.white,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: ListTile(
                                                  title: Text(
                                                    "Something Just Like This",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6,
                                                  ),
                                                  subtitle: Text(
                                                      "The Chainsmokers & Coldplay",
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                  trailing: IconButton(
                                                    icon: Icon(LineIcons
                                                        .horizontalEllipsis),
                                                    onPressed: () {},
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: SliderTheme(
                                                  data: SliderTheme.of(context)
                                                      .copyWith(
                                                    trackShape:
                                                        RectangularSliderTrackShape(),
                                                    trackHeight: 4.0,
                                                    thumbColor:
                                                        Colors.blueAccent,
                                                    thumbShape:
                                                        RoundSliderThumbShape(
                                                            enabledThumbRadius:
                                                                8.0),
                                                    overlayColor: Colors.red
                                                        .withAlpha(32),
                                                    overlayShape:
                                                        RoundSliderOverlayShape(
                                                            overlayRadius: 4.0),
                                                  ),
                                                  child: Slider(
                                                    value: 20,
                                                    min: 0,
                                                    max: 100,
                                                    activeColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    inactiveColor:
                                                        Theme.of(context)
                                                            .accentColor,
                                                    onChanged: (v) {},
                                                  ),
                                                ),
                                              )
                                            ],
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      icon: SvgPicture.asset(
                                                        "assets/icons/shuffle.svg",
                                                        height: 20,
                                                      ),
                                                      onPressed: () {}),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      LineIcons.stepBackward,
                                                      size: 40,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 60,
                                                    height: 60,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                    child: Icon(
                                                      LineIcons.play,
                                                      size: 40,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      LineIcons.stepForward,
                                                      size: 40,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    icon: SvgPicture.asset(
                                                        "assets/icons/reload.svg",
                                                        height: 20,
                                                      ),
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    IconButton(
                                                        icon: Icon(LineIcons
                                                            .chromecast),
                                                        onPressed: () {}),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        LineIcons.heartAlt,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                      ),
                                                    ),
                                                    IconButton(
                                                        icon: SvgPicture.asset(
                                                          "assets/icons/share.svg",
                                                          height: 20,
                                                        ),
                                                        onPressed: () {}),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                color: Colors.white,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 20),
                        topRight: Radius.elliptical(40, 20),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text("UP NEXT")),
                      Container(width: 40, child: Icon(LineIcons.angleUp)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
