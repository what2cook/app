import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/image_box.dart';

class RecipeCard extends StatelessWidget {

  final String name;
  final String image;
  final String duration;
  final String difficulty;
  final String shortage;

  RecipeCard(this.name, this.image, this.duration, this.difficulty, this.shortage);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: W2CColor.grey
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: ImageBox(image),
            ),
            Container(
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${name}\n',
                      style: W2CTextStyle.notosans_bold_20,
                    ),
                    TextSpan(
                      text: '조리 시간: ${duration}  난이도: ${difficulty}\n',
                      style: W2CTextStyle.notosans_regular_15,
                    ),
                    TextSpan(
                      text: '부족한 재료: ${shortage}',
                      style: W2CTextStyle.notosans_regular_15,
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}