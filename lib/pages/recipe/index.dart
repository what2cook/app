import 'package:flutter/material.dart';

import 'package:what2cook/components/molecules/search_box.dart';
import 'package:what2cook/components/molecules/recipe_card.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  List<RecipeCard> _wholeList = [];
  List<RecipeCard> _showList = [];

  void initShowList() {
    _showList = List.from(_wholeList);
  }

  void search(String word) {
    setState(() {
      initShowList();
      _showList = _showList.where((card) => card.name.contains(word)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      _wholeList.add(RecipeCard(
          '레시피${i}',
          'http://file.okdab.com/recipe/148299577268400131.jpg',
          '30분',
          '보통',
          '콩'));
    }
    _showList = List.from(_wholeList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          child: SearchBox(search, '레시피를 검색하세요.'),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(40),
            child: Scrollbar(
              child: ListView.builder(
                  itemCount: _showList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      child: _showList[index],
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
