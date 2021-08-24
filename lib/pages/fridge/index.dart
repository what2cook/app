import 'package:flutter/material.dart';

import 'package:what2cook/components/molecules/search_box.dart';
import 'package:what2cook/components/molecules/ingredient_card.dart';
import 'package:what2cook/components/organisms/edit_box.dart';

class Fridge extends StatefulWidget {
  @override
  _FridgeState createState() => _FridgeState();
}

class _FridgeState extends State<Fridge> {
  String _mode = 'normal';
  String _searchWord = '';
  List<IngredientCard> _wholeList = [];
  List<IngredientCard> _showList = [];
  List<IngredientCard> _myList = [];

  void initShowList() {
    _myList.sort((a, b) => a.name.compareTo(b.name));
    if (_mode == 'normal') {
      _showList = List.from(_myList);
    } else if (_mode == 'add') {
      _showList = [];
      _wholeList.forEach((card) {
        if (_myList.contains(card)) {
          _showList.add(IngredientCard(card.name, 'disable', doNothing));
        } else {
          _showList.add(IngredientCard(card.name, 'add', add));
        }
      });
    } else if (_mode == 'remove') {
      _showList = [];
      _myList.forEach((card) {
        _showList.add(IngredientCard(card.name, 'remove', remove));
      });
    }
  }

  void search(String word) {
    setState(() {
      _searchWord = word;
      initShowList();
      _showList = _showList.where((card) => card.name.contains(word)).toList();
    });
  }

  void add(String name) {
    setState(() {
      _myList.add(IngredientCard(name, 'normal', doNothing));
      search(_searchWord);
    });
  }

  void remove(String name) {
    setState(() {
      _myList.removeWhere((card) => card.name == name);
      search(_searchWord);
    });
  }

  void doNothing(String nothing) {}

  void addMode() {
    setState(() {
      _mode = 'add';
      search(_searchWord);
    });
  }

  void removeMode() {
    setState(() {
      _mode = 'remove';
      search(_searchWord);
    });
  }

  void doneMode() {
    setState(() {
      _mode = 'normal';
      search(_searchWord);
    });
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      _wholeList.add(IngredientCard('재료 $i', 'normal', doNothing)); // api로 대체
    }
    for (int i = 10; i < 30; i++) {
      _myList.add(IngredientCard('재료 $i', 'normal', doNothing)); // api로 대체
    }
    initShowList();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: SearchBox(search, '재료를 검색하세요.'),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(40),
                child: Scrollbar(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2,
                    children: _showList,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: MediaQuery.of(context).size.width - 80,
          top: MediaQuery.of(context).size.height - 350,
          child: EditBox(addMode, removeMode, doneMode),
        ),
      ],
    );
  }
}
