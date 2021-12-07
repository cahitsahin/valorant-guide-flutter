// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Abilities _$_$_AbilitiesFromJson(Map<String, dynamic> json) {
  return _$_Abilities(
    type: json['type'] as String,
    name: json['name'] as String,
    imagePath: json['imagePath'] as String,
    description: json['description'] as String,
    cost: json['cost'] as String,
    charges: json['charges'] as int,
  );
}

Map<String, dynamic> _$_$_AbilitiesToJson(_$_Abilities instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'imagePath': instance.imagePath,
      'description': instance.description,
      'cost': instance.cost,
      'charges': instance.charges,
    };
