import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:tvsm/util/ui_layout.dart';
import 'package:tvsm/views/screen_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

      builder: (context, constraints) => OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                primaryColor: Color(0xFFD2D2D2),
                textTheme: TextTheme(
                  display1: TextStyle(
                      color: Color(0xFFF5F5F5), fontWeight: FontWeight.w300),
                  subhead: TextStyle(
                      color: Color(0xFFF5F5F5), fontWeight: FontWeight.w300),
                ),
                backgroundColor: Color(0xFF211F1F),
                buttonColor: Color(0xFF2A399B),
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                dividerColor: Color(0xFF707070)),
            home: ScreenWidget(),
          );
        }
      ),
    );
  }
}
