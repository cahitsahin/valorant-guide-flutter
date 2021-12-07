// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestteamcomp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BestTeamComp _$_$_BestTeamCompFromJson(Map<String, dynamic> json) {
  return _$_BestTeamComp(
    names: (json['names'] as List<dynamic>).map((e) => e as String).toList(),
    rankAttack: json['rankAttack'] as int,
    rankDefend: json['rankDefend'] as int,
  );
}

Map<String, dynamic> _$_$_BestTeamCompToJson(_$_BestTeamComp instance) =>
    <String, dynamic>{
      'names': instance.names,
      'rankAttack': instance.rankAttack,
      'rankDefend': instance.rankDefend,
    };
