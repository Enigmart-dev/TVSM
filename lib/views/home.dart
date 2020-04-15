import 'package:flutter/material.dart';
import 'package:tvsm/util/ui_layout.dart';
import 'package:tvsm/widgets/home_widgets.dart';

class HomeView extends StatelessWidget {

  final List<String> images = [
    "res/freud.jpg",
    "res/mr.jpg",
    "res/casa-de-papel.jpg",
    "res/stranger.jpg",
    "res/you.jpg",
    "res/thirteen.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: LogoWidget(),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 3),
              Flexible(
                  flex: 2,
                  child: WelcomeBackWidget(height: constraints.maxHeight)),
              Flexible(
                flex: 13,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Text(
                            "New Tv Series",
                            style: TextStyle(
                                color: Color(0xFFF5F5F5), fontWeight: FontWeight.w300,
                              fontSize: SizeConfig.textMultiplier * 2.5
                            ),
                          )),
                      SizedBox(
                          height: SizeConfig.heightMultiplier * 5),
                      Flexible(
                        flex: 11,
                        child: GridView.count(
                            crossAxisCount: constraints.maxWidth < 480 ? 2 : 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            children: List.generate(6, (index) {
                              return Container(
                                  height:
                                  SizeConfig.heightMultiplier * 20,
                                  width:
                                  SizeConfig.heightMultiplier * 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xFF707070), width: 0.2),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset(
                                    images[index],
                                    fit: BoxFit.cover,
                                  ));
                            })),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
