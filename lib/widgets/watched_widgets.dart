import 'package:flutter/material.dart';
import 'package:tvsm/util/ui_layout.dart';

class MovieBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 18,
      width: SizeConfig.widthMultiplier * 80,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF707070), width: 0.2),
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 0.5,
                offset: Offset(0, 1.1))
          ]),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: AspectRatio(
              aspectRatio: SizeConfig.aspectRatio * 1.4,
              child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset("res/mr.jpg", fit: BoxFit.cover))),
            ),
          ),
          Flexible(
            flex: 5,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: SizeConfig.heightMultiplier * 1,
                  left: SizeConfig.widthMultiplier * 1.8,
                  child: Text(
                    "Title",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 5,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 1.8),
                    child: Text(
                      "Little description",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.textMultiplier * 3,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Positioned(
                  bottom: SizeConfig.heightMultiplier * 1,
                  left: SizeConfig.widthMultiplier * 1.8,
                  child: Text(
                    "date: 01 - 01 - 1970",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 2,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Positioned(
                  top: SizeConfig.heightMultiplier * 1,
                  right: SizeConfig.widthMultiplier * 1,
                  child: Text(
                    "platform",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 2,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PlatformChips extends StatefulWidget {
  @override
  _PlatformChipsState createState() => _PlatformChipsState();
}

class _PlatformChipsState extends State<PlatformChips> {
  final List<String> platforms = ["ALL", "Netflix", "Disney+", "Prime", "Hulu"];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.widthMultiplier * 100,
        height: SizeConfig.widthMultiplier * 15,
        child: Wrap(
          spacing: 10,
          direction: Axis.horizontal,
          children: List.generate(platforms.length, (index) {
            return FilterChip(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                label: Text(platforms[index]),
                onSelected: (bool value) {},
                selectedColor: Colors.deepOrange,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF3E65FF),
              );
          }),
        ));
  }
}
