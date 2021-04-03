import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musix/data/top100artists.dart';
import 'package:musix/screens/artist/artist.dart';

class Artists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 140,
            childAspectRatio: 1,
            crossAxisSpacing: 0,
            mainAxisSpacing: 20),
        semanticChildCount: 3,
        itemCount: 50,
        itemBuilder: (BuildContext, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Artist()));
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    height: 100,
                    width: 100,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      top100artists[index]["images"][1]
                          .toString()
                          .replaceAll("\\", ""),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    top100artists[index]["artist"],
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
