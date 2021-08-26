import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';

class DetailCard extends StatelessWidget {
  final String index;
  final String image;
  final String description;

  DetailCard(this.index, this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text(
            index,
            style: W2CTextStyle.notosans_bold_20.merge(TextStyle(color: W2CColor.red)),
          ),
        ),
        Divider(
          thickness: 1,
          color: W2CColor.red.withOpacity(0.5),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          child: Image.network(image),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          child: Text(
            description,
            style: W2CTextStyle.notosans_regular_20,
          ),
        ),
      ],
    );
  }
}