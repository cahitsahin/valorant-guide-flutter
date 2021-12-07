
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability.freezed.dart';
part 'ability.g.dart';


@freezed
// 4. define a class with a mixin
class Abilities with _$Abilities {
  // 5. define a factory constructor
  factory Abilities({
    // 6. list all the arguments/properties
    required String type,
    required String name,
    required String imagePath,
    required String description,
    required String cost,
    required int charges,
    // 7. assign it with the `_Review` class constructor
  }) = _Abilities;

  // 8. define another factory constructor to parse from json
  factory Abilities.fromJson(Map<String, dynamic> json) => _$AbilitiesFromJson(json);
}