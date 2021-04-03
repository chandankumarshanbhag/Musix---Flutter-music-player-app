import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:musix/data/selena_gomez.dart';

class Artist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                  icon: Icon(
                    LineIcons.arrowLeft,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              title: Text(
                "" ?? 'Selena Gomez',
                style: Theme.of(context).textTheme.headline6,
              ),
              elevation: 0,
              pinned: true,
              floating: true,
              backgroundColor: Theme.of(context).accentColor,
              expandedHeight: 300.0,
              toolbarHeight: 80,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 600,
                  child: Stack(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/selena_gomez.jpg',
                              fit: BoxFit.cover)),
                      Align(
                        alignment: Alignment(0, 0.3),
                        child: Text(
                          selenaGomez["name"],
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              .copyWith(shadows: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 10),
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 10)
                          ], color: Colors.white, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0, 0.8),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          blurRadius: 10),
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          blurRadius: 10)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 120,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/shuffle.svg",
                                      height: 20,
                                    ),
                                    SizedBox(width: 10),
                                    Text("Shuffle")
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          blurRadius: 10),
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          blurRadius: 10)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 120,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(LineIcons.radiation),
                                    SizedBox(width: 10),
                                    Text("Radio")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(40, 20),
                    topRight: Radius.elliptical(40, 20),
                  ),
                ),
                // height: MediaQuery.of(context).size.height - 110,
                child: Column(
                  // shrinkWrap: true,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:
                              Theme.of(context).accentColor.withOpacity(0.2)),
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Text("LATEST RELEASE"),
                          ),
                          ListTile(
                            title: Text(selenaGomez["latest_release"]["title"]),
                            subtitle:
                                Text(selenaGomez["latest_release"]["album"]),
                            trailing: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4)),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Hero(
                                    tag: "selena",
                                    child: Image.network(
                                      selenaGomez["latest_release"]["poster"],
                                      fit: BoxFit.cover,
                                    ))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          "Top songs",
                          style: Theme.of(context).textTheme.headline6,
                        )),
                    ListView.builder(
                        padding: EdgeInsets.all(10),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: selenaGomez["top_songs"].length,
                        itemBuilder: (BuildContext, int index) {
                          return ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height: 60,
                              width: 60,
                              child: Image.network(
                                  selenaGomez["top_songs"][index]["posters"],
                                  fit: BoxFit.cover),
                            ),
                            title:
                                Text(selenaGomez["top_songs"][index]["name"]),
                            subtitle: Text(
                                selenaGomez["top_songs"][index]["singers"]),
                            trailing: IconButton(
                                icon: Icon(LineIcons.horizontalEllipsis),
                                onPressed: () {}),
                          );
                        }),
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          "Albums",
                          style: Theme.of(context).textTheme.headline6,
                        )),
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        padding: EdgeInsets.all(20),
                          scrollDirection: Axis.horizontal,
                          itemCount: selenaGomez["albums"].length,
                          itemBuilder: (BuildContext, int index) {
                            return Container(
                                height: 300,
                                width: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        height: 100,
                                        width: 100,
                                        child: Image.network(
                                            selenaGomez["albums"][index]
                                                ["poster"])),
                                    Container(
                                      height: 60,
                                      child: ListTile(
                                        contentPadding: EdgeInsets.all(0),
                                        title: Text(selenaGomez["albums"][index]
                                            ["name"]),
                                        subtitle: Text(
                                            selenaGomez["albums"][index]["ep"]),
                                      ),
                                    )
                                  ],
                                ));
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
