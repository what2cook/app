import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/pages/fridge/index.dart';
import 'package:what2cook/pages/recipe/index.dart';
import 'package:what2cook/pages/favorite/index.dart';
import 'package:what2cook/pages/setting/index.dart';
import 'package:what2cook/components/organisms/header.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {

  int _selectedIndex = 0;
  List _widgetOptions = [
    Fridge(),
    Recipe(),
    Favorite(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: W2CColor.red,
        selectedItemColor: W2CColor.white,
        unselectedItemColor: W2CColor.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '나의 냉장고',
            icon: Icon(Icons.kitchen),
          ),
          BottomNavigationBarItem(
            label: '레시피',
            icon: Icon(Icons.menu_book),
          ),
          BottomNavigationBarItem(
            label: '즐겨찾기',
            icon: Icon(Icons.star),
          ),
          BottomNavigationBarItem(
            label: '설정',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(),
            Container(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
    );
  }
}