import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant/models/character/abilities/ability.dart';
import 'package:valorant/models/character/bestteamcomp/bestteamcomp.dart';


part 'characters.freezed.dart';
part 'characters.g.dart';


@freezed
// 4. define a class with a mixin
class Character with _$Character {
  // 5. define a factory constructor
  factory Character({
    // 6. list all the arguments/properties
    required String type,
    required String description,
    required String key,
    required String imagePath,
    required String iconPath,
    required String primaryColor,
    required String secondaryColor,
    @Default([]) List<BestTeamComp> bestTeamComp,
    @Default([]) List<String> bestWeapon,
    @Default([]) List<Abilities> abilities,
    // 7. assign it with the `_Review` class constructor
  }) = _Character;

  // 8. define another factory constructor to parse from json
  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}





