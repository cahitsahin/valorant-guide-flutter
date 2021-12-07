// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$_$_CharacterFromJson(Map<String, dynamic> json) {
  return _$_Character(
    type: json['type'] as String,
    description: json['description'] as String,
    key: json['key'] as String,
    imagePath: json['imagePath'] as String,
    iconPath: json['iconPath'] as String,
    primaryColor: json['primaryColor'] as String,
    secondaryColor: json['secondaryColor'] as String,
    bestTeamComp: (json['bestTeamComp'] as List<dynamic>?)
            ?.map((e) => BestTeamComp.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    bestWeapon: (json['bestWeapon'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    abilities: (json['abilities'] as List<dynamic>?)
            ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'key': instance.key,
      'imagePath': instance.imagePath,
      'iconPath': instance.iconPath,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'bestTeamComp': instance.bestTeamComp,
      'bestWeapon': instance.bestWeapon,
      'abilities': instance.abilities,
    };
