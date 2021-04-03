import 'package:flutter/material.dart';
import 'package:musix/data/selena_gomez.dart';

class Albumbs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 140,
            childAspectRatio: 0.8,
            crossAxisSpacing: 0,
            mainAxisSpacing: 20),
        semanticChildCount: 3,
          itemCount: selenaGomez["albums"].length,
          itemBuilder: (BuildContext, int index) {
            return Container(
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: 100,
                      height: 100,
                        child: Image.network(
                            selenaGomez["albums"][index]["poster"])),
                    SizedBox(height: 10),
                    Text(
                      selenaGomez["albums"][index]["name"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 5),
                    Text(
                      selenaGomez["albums"][index]["ep"],
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ));
          }),
    );
  }
}
