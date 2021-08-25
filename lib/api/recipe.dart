import 'package:what2cook/components/molecules/recipe_card.dart';

class RecipeApi {
  List<RecipeCard> _wholeList = [];

  RecipeApi() {
    for (int i = 0; i < 100; i++) {
      _wholeList.add(RecipeCard(
          '레시피${i}',
          'http://file.okdab.com/recipe/148299577268400131.jpg',
          '30분',
          '보통',
          '콩'));
    }
  }

  Future<List<RecipeCard>> getWholeList() async {
    return _wholeList;
  }
}

final recipeApi = RecipeApi();
