// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weapon _$_$_WeaponFromJson(Map<String, dynamic> json) {
  return _$_Weapon(
    type: json['type'] as String,
    description: json['description'] as String,
    key: json['key'] as String,
    fireModes: (json['fireModes'] as List<dynamic>?)
            ?.map((e) => FireModes.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    imagePath: json['imagePath'] as String,
    cost: json['cost'] as String,
    capacity: json['capacity'] as String,
    rate: json['rate'] as String,
    wallPenetration: json['wallPenetration'] as String,
    primaryColor: json['primaryColor'] as String,
    secondaryColor: json['secondaryColor'] as String,
    distanceRate: (json['distanceRate'] as List<dynamic>?)
            ?.map((e) => DistanceRate.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    otherSkin: (json['otherSkin'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_WeaponToJson(_$_Weapon instance) => <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'key': instance.key,
      'fireModes': instance.fireModes,
      'imagePath': instance.imagePath,
      'cost': instance.cost,
      'capacity': instance.capacity,
      'rate': instance.rate,
      'wallPenetration': instance.wallPenetration,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'distanceRate': instance.distanceRate,
      'otherSkin': instance.otherSkin,
    };
