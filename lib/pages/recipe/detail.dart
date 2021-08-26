import 'package:flutter/material.dart' hide BackButton;

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/entities/recipe.dart';
import 'package:what2cook/api/recipe.dart';
import 'package:what2cook/components/molecules/back_button.dart';
import 'package:what2cook/components/molecules/detail_card.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Widget _body = Container();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DetailArguments;
    final String name = args.name;
    recipeApi.getDetail(name).then((res) {
      List<Widget> body = [
        Container(
          alignment: Alignment.center,
          child: Text(
            '${res.name}\n',
            style: W2CTextStyle.notosans_regular_30,
          ),
        ),
        DetailCard(
          '기본 정보',
          res.image,
          '조리시간: ${res.duration}\n난이도: ${res.difficulty}\n부족한 재료: ${res.shortage}',
        ),
        // Container(
        //   alignment: Alignment.center,
        //   child: Text(
        //     '${res.name}\n',
        //     style: W2CTextStyle.notosans_regular_30,
        //   ),
        // ),
        // Image.network(res.image),
        // Text(
        //   '조리시간: ${res.duration}\n난이도: ${res.difficulty}\n부족한 재료: ${res.shortage}',
        //   style: W2CTextStyle.notosans_regular_20,
        // ),
        ...res.detailList,
      ];
      setState(() {
        _body = Scrollbar(
          child: ListView.builder(
              itemCount: body.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: body[index],
                );
              }),
        );
      });
    });
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Stack(
            children: <Widget>[
              _body,
              Container(
                child: BackButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}