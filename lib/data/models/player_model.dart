import 'package:json_annotation/json_annotation.dart';

part 'player_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlayerModel {
  final int id;
  final String name;

  PlayerModel({
    this.id = 0,
    this.name = '',
  });

  /* static const empty = PlayerModel(
    id: 0,
    name: '',
  ); */
}
