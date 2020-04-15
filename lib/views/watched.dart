import 'package:flutter/material.dart';
import 'package:tvsm/util/ui_layout.dart';
import 'package:tvsm/widgets/watched_widgets.dart';

class Watched extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60),
            Flexible(
              flex: 3,
              child: Text(
                "Hai già guardato",
                style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 5,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 20),
            Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: PlatformChips()),
            SizedBox(height: 10),
            Expanded(
              flex: 15,
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                shrinkWrap: false,
                itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: MovieBox());
                  }
              ),
            ),
          ],
        ),
      );
  }
}
