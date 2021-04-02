import 'package:flutter/cupertino.dart';

class Posters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: _height / 4,
          width: 40,
          child: Image.asset(
            "assets/bruno_mars.png",
            alignment: Alignment.centerRight,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: _height / 3,
          width: _height / 3,
          child: Hero(
            tag: "player-poster",
            child: Image.asset("assets/Something_Just_Like_This.png"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16))),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: _height / 4,
          width: 40,
          child: Image.asset(
            "assets/jb.png",
            alignment: Alignment.centerLeft,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
