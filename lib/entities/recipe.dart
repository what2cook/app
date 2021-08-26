import 'package:what2cook/components/molecules/detail_card.dart';

class DetailArguments {
  final String name;

  DetailArguments(this.name);
}

class DetailProps {
  final String name;
  final String image;
  final String duration;
  final String difficulty;
  final String shortage;
  final List<DetailCard> detailList;

  DetailProps(
      this.name, this.image, this.duration, this.difficulty, this.shortage, this.detailList);
}