import 'package:what2cook/components/molecules/recipe_card.dart';
import 'package:what2cook/entities/recipe.dart';
import 'package:what2cook/components/molecules/detail_card.dart';

class RecipeApi {
  List<RecipeCard> _wholeList = [];
  List<RecipeCard> _favoriteList = [];
  List<DetailCard> _detailLIst = [];

  RecipeApi() {
    for (int i = 0; i < 100; i++) {
      _wholeList.add(RecipeCard(
          '레시피${i}',
          'http://file.okdab.com/recipe/148299577268400131.jpg',
          '30분',
          '보통',
          '콩'));
    }
    for (int i = 10; i < 30; i++) {
      _favoriteList.add(RecipeCard(
          '레시피${i}',
          'http://file.okdab.com/recipe/148299577268400131.jpg',
          '30분',
          '보통',
          '콩'));
    }
    for (int i = 0; i < 10; i++) {
      _detailLIst.add(DetailCard(
        (i + 1).toString(),
        'http://file.okdab.com/recipe/148299577268400131.jpg',
        '감자를 씻어 껍질을 벗기고 삶는다.',
      ));
    }
  }

  Future<List<RecipeCard>> getWholeList() async {
    return _wholeList;
  }

  Future<List<RecipeCard>> getFavoriteList() async {
    return _favoriteList;
  }

  Future<DetailProps> getDetail(String name) async {
    return DetailProps(
      name,
      'http://file.okdab.com/recipe/148299577268400131.jpg',
      '30분',
      '보통',
      '콩',
      _detailLIst,
    );
  }
}

final recipeApi = RecipeApi();
