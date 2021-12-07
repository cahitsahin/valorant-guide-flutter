import '../distanceRate/distanceRate.dart';
import '../fireModes/fireModes.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapon.freezed.dart';
part 'weapon.g.dart';


@freezed
// 4. define a class with a mixin
class Weapon with _$Weapon {
  // 5. define a factory constructor
  factory Weapon({
    // 6. list all the arguments/properties
    required  String type,
    required String description,
    required String key,
    @Default([]) List<FireModes> fireModes,
    required String imagePath,
    required String cost,
    required String capacity,
    required String rate,
    required String wallPenetration,
    required String primaryColor,
    required String secondaryColor,
    @Default([]) List<DistanceRate> distanceRate,
    @Default([]) List<String> otherSkin,
    // 7. assign it with the `_Review` class constructor
  }) = _Weapon;

  // 8. define another factory constructor to parse from json
  factory Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);
}