// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
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

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_AbilitiesToJson(_$_Abilities instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'imagePath': instance.imagePath,
      'description': instance.description,
      'cost': instance.cost,
      'charges': instance.charges,
    };
