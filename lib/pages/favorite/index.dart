import 'package:flutter/material.dart';

import 'package:what2cook/components/molecules/search_box.dart';
import 'package:what2cook/components/molecules/recipe_card.dart';
import 'package:what2cook/api/recipe.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<RecipeCard> _favoriteList = [];
  List<RecipeCard> _showList = [];

  void initShowList() {
    _showList = List.from(_favoriteList);
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
    recipeApi.getFavoriteList().then((res) {
      _favoriteList = res;
      setState(() {
        _showList = List.from(_favoriteList);
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
