import 'package:what2cook/components/molecules/ingredient_card.dart';

class FridgeApi {
  List<IngredientCard> _wholeList = [];
  List<IngredientCard> _myList = [];

  FridgeApi() {
    for (int i = 0; i < 100; i++) {
      _wholeList.add(IngredientCard('재료 $i', 'normal', doNothing));
    }
    for (int i = 10; i < 30; i++) {
      _myList.add(IngredientCard('재료 $i', 'normal', doNothing));
    }
  }

  void doNothing(String nothing) {}

  Future<List<IngredientCard>> getWholeList() async {
    return _wholeList;
  }

  Future<List<IngredientCard>> getMyList() async {
    _myList.sort((a, b) => a.name.compareTo(b.name));
    return _myList;
  }

  Future<bool> addIngredient(String name) async {
    _myList.add(IngredientCard(name, 'normal', doNothing));
    return true;
  }

  Future<bool> removeIngredient(String name) async {
    _myList.removeWhere((card) => card.name == name);
    return true;
  }
}

final fridgeApi = FridgeApi();
