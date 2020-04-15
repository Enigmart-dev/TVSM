import 'package:flutter/material.dart';
import 'package:tvsm/util/ui_layout.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 100,
      height: SizeConfig.heightMultiplier * 8,
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1),
      child: Image.asset("res/popcorn-icon.png", fit: BoxFit.scaleDown,),
    );
  }
}


class WelcomeBackWidget extends StatelessWidget {
  final double height;
  WelcomeBackWidget({this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Text(
                "Bentornato, Luigi",
                style: TextStyle(
                    color: Color(0xFFF5F5F5),
                    fontWeight: FontWeight.w300,
                    fontSize: SizeConfig.textMultiplier * 4
                ),
            ),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 4),
          Flexible(
            flex: 1,
            child: Divider(
              height: 1,
              thickness: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
        ],
      ),
    );
  }
}
