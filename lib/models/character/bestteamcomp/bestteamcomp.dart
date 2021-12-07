import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';


part 'bestteamcomp.freezed.dart';
part 'bestteamcomp.g.dart';


@freezed
// 4. define a class with a mixin
class BestTeamComp with _$BestTeamComp {
  // 5. define a factory constructor
  factory BestTeamComp({
    // 6. list all the arguments/properties
    required List<String> names,
    required int rankAttack,
    required int rankDefend,
    // 7. assign it with the `_Review` class constructor
  }) = _BestTeamComp;

  // 8. define another factory constructor to parse from json
  factory BestTeamComp.fromJson(Map<String, dynamic> json) => _$BestTeamCompFromJson(json);
}