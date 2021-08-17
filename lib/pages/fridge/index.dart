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
  List<IngredientCard> _wholeList = []; // api로 대체
  List<IngredientCard> _showList = [];

  void search(String word) {
    setState(() {
      _showList = _wholeList.where((card) => card.name.contains(word)).toList();
    });
  }

  void add() {

  }

  void remove() {

  }

  @override
  void initState() {
    super.initState();
    for (int i=0; i<100; i++) {
      _wholeList.add(IngredientCard('ingred $i'));
    }
    _showList = List.from(_wholeList);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> cardList = [];
    if (_mode == 'normal') {
      cardList = List.from(_showList);
    } else if (_mode == 'add') {

    } else if (_mode == 'remove') {

    }

    return Stack(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: SearchBox(search),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(40),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2,
                  children: cardList,
                ),
              )
            ),
          ],
        ),
        Positioned(
          left: MediaQuery.of(context).size.width - 80,
          top: MediaQuery.of(context).size.height - 350,
          child: EditBox(add, remove),
        ),
      ],
    );
  }
}