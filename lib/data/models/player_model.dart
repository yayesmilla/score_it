import 'package:json_annotation/json_annotation.dart';

part 'player_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlayerModel {
  final int id;
  final String name;
  int score;

  PlayerModel({
    this.id = 0,
    this.name = '',
    this.score = 0,
  });

  /* static const empty = PlayerModel(
    id: 0,
    name: '',
  ); */
}
