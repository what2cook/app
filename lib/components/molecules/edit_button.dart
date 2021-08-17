import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/edit_icon.dart';

class EditButton extends StatelessWidget {

  final Function() _onTap;

  EditButton(this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: W2CColor.red,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () {
          _onTap();
        },
        child: EditIcon(),
      ),
    );
  }
}