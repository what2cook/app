import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';

class IngredientCard extends StatelessWidget {

  final String name;

  IngredientCard(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}