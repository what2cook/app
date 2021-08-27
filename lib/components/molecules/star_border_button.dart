import 'package:flutter/material.dart';

import 'package:what2cook/components/atoms/star_border_icon.dart';

class StarBorderButton extends StatelessWidget {
  final Function(String) _onTap;
  final String _name;

  StarBorderButton(this._onTap, this._name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: InkWell(
        onTap: () {
          _onTap(_name);
        },
        child: StarBorderIcon(),
      ),
    );
  }
}
