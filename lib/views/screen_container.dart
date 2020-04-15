import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tvsm/views/home.dart';
import 'package:tvsm/views/watched.dart';
import 'package:tvsm/widgets/home_widgets.dart';

import 'accounts.dart';

class ScreenWidget extends StatefulWidget {
  @override
  _ScreenWidgetState createState() => _ScreenWidgetState();
}

class _ScreenWidgetState extends State<ScreenWidget> {
  int _selectedItem = 1;

  final List<Widget> views = [
    Watched(),
    HomeView(),
    Accounts(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xFF707070))
            )
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            backgroundColor: Theme.of(context).backgroundColor,
            onTap: _onItemTapped,
            currentIndex: _selectedItem,
            items: const<BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.local_movies),
                title: Text('Watched'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Accounts'),
              ),
            ],
          ),
        ),
      body: views[_selectedItem],
    );
  }
}
