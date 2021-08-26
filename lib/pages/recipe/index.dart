import 'package:flutter/material.dart';

import 'package:what2cook/components/molecules/search_box.dart';
import 'package:what2cook/components/molecules/recipe_card.dart';
import 'package:what2cook/api/recipe.dart';

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
    initShowList();
    setState(() {
      _showList = _showList.where((card) => card.name.contains(word)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    recipeApi.getWholeList().then((res) {
      _wholeList = res;
      setState(() {
        _showList = List.from(_wholeList);
      });
    });
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
                      margin: EdgeInsets.only(top: 5, bottom: 5),
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
