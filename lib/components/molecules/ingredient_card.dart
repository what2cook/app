import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/molecules/small_add_button.dart';
import 'package:what2cook/components/molecules/small_remove_button.dart';

class IngredientCard extends StatelessWidget {

  final String name;
  final String mode;
  final Function(String) _onTap;

  IngredientCard(this.name, this.mode, this._onTap);

  @override
  bool operator ==(Object other) {
    return other is IngredientCard && name == other.name && mode == other.mode;
  }

  @override
  int get hashCode => hashValues(name, mode);

  @override
  Widget build(BuildContext context) {
    Widget defaultCard = Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: W2CColor.grey,
        ),
      ),
      child: Text(
        name,
        style: W2CTextStyle.notosans_regular_20,
      ),
    );

    Widget card = defaultCard;

    if (mode == 'add') {
      card = Stack(
        children: <Widget>[
          defaultCard,
          Container(
            alignment: Alignment.topRight,
            child: SmallAddButton(() {}),
          )
        ],
      );
    } else if (mode == 'remove') {
      card = Stack(
        children: <Widget>[
          defaultCard,
          Container(
            alignment: Alignment.topRight,
            child: SmallRemoveButton(() {}),
          )
        ],
      );
    } else if (mode == 'disable') {
      card = Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: W2CColor.grey,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: W2CColor.grey,
          ),
        ),
        child: Text(
          name,
          style: W2CTextStyle.notosans_regular_20,
        ),
      );
    }

    return InkWell(
      onTap: () {
        _onTap(name);
      },
      child: card,
    );
  }
}