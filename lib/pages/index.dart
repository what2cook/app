import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/pages/greeting/index.dart';
import 'package:what2cook/pages/fridge/index.dart';
import 'package:what2cook/pages/recipe/index.dart';
import 'package:what2cook/pages/favorite/index.dart';
import 'package:what2cook/components/organisms/header.dart';
import 'package:what2cook/api/user.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  bool _isLoggedIn = false;
  int _selectedIndex = 0;
  List _widgetOptions = [
    Fridge(),
    Recipe(),
    Favorite(),
  ];

  void login(String provider) {
    userApi.login(provider).then((res) {
      if (res) {
        setState(() {
          _isLoggedIn = true;
        });
      }
    });
  }

  void setting() {
    print('setting');
  }

  void logout() {
    userApi.logout().then((res) {
      if (res) {
        setState(() {
          _isLoggedIn = false;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _isLoggedIn = Hive.box('local').get('id') != null;
  }

  @override
  Widget build(BuildContext context) {
    return _isLoggedIn ? Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [W2CShadow.big],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: W2CColor.white,
          selectedItemColor: W2CColor.red,
          unselectedItemColor: W2CColor.grey,
          selectedLabelStyle: W2CTextStyle.notosans_bold_15,
          unselectedLabelStyle: W2CTextStyle.notosans_regular_15,
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
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(logout, setting),
            Expanded(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
    )
        : Greeting(login);
  }
}
