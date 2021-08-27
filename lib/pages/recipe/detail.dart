import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide BackButton;

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/entities/recipe.dart';
import 'package:what2cook/api/recipe.dart';
import 'package:what2cook/components/molecules/back_button.dart';
import 'package:what2cook/components/molecules/star_button.dart';
import 'package:what2cook/components/molecules/star_border_button.dart';
import 'package:what2cook/components/molecules/detail_card.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  String _name = '';
  bool _isFavorite = false;
  Widget _head = Container();
  Widget _body = Container();

  void addFavorite(String name) {
    recipeApi.addFavorite(name).then((res) {
      setState(() {
        _isFavorite = true;
      });
    });
  }

  void removeFavorite(String name) {
    recipeApi.removeFavorite(name).then((res) {
      setState(() {
        _isFavorite = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DetailArguments;
    final String name = args.name;
    recipeApi.isFavorite(name).then((res) {
      setState(() {
        _name = name;
        _isFavorite = res;
      });
    });
    recipeApi.getDetail(name).then((res) {
      Widget head = Container(
        color: W2CColor.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BackButton(),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                '${res.name}\n',
                style: W2CTextStyle.notosans_regular_30,
              ),
            ),
            _isFavorite ? StarButton(removeFavorite, _name)
                        : StarBorderButton(addFavorite, _name),
          ],
        ),
      );
      List<Widget> body = [
        DetailCard(
          '기본 정보',
          res.image,
          '조리시간: ${res.duration}\n난이도: ${res.difficulty}\n부족한 재료: ${res.shortage}',
        ),
        ...res.detailList,
      ];
      setState(() {
        _head = head;
        _body = Expanded(
          child: Scrollbar(
            child: ListView.builder(
                itemCount: body.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: body[index],
                  );
                }),
          ),
        );
      });
    });
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
          child: Column(
            children: <Widget>[
              _head,
              _body,
            ],
          ),
        ),
      ),
    );
  }
}