// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weapon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weapon _$WeaponFromJson(Map<String, dynamic> json) {
  return _Weapon.fromJson(json);
}

/// @nodoc
class _$WeaponTearOff {
  const _$WeaponTearOff();

  _Weapon call(
      {required String type,
      required String description,
      required String key,
      List<FireModes> fireModes = const [],
      required String imagePath,
      required String cost,
      required String capacity,
      required String rate,
      required String wallPenetration,
      required String primaryColor,
      required String secondaryColor,
      List<DistanceRate> distanceRate = const [],
      List<String> otherSkin = const []}) {
    return _Weapon(
      type: type,
      description: description,
      key: key,
      fireModes: fireModes,
      imagePath: imagePath,
      cost: cost,
      capacity: capacity,
      rate: rate,
      wallPenetration: wallPenetration,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      distanceRate: distanceRate,
      otherSkin: otherSkin,
    );
  }

  Weapon fromJson(Map<String, Object> json) {
    return Weapon.fromJson(json);
  }
}

/// @nodoc
const $Weapon = _$WeaponTearOff();

/// @nodoc
mixin _$Weapon {
// 6. list all the arguments/properties
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  List<FireModes> get fireModes => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get capacity => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;
  String get wallPenetration => throw _privateConstructorUsedError;
  String get primaryColor => throw _privateConstructorUsedError;
  String get secondaryColor => throw _privateConstructorUsedError;
  List<DistanceRate> get distanceRate => throw _privateConstructorUsedError;
  List<String> get otherSkin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponCopyWith<Weapon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponCopyWith<$Res> {
  factory $WeaponCopyWith(Weapon value, $Res Function(Weapon) then) =
      _$WeaponCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String description,
      String key,
      List<FireModes> fireModes,
      String imagePath,
      String cost,
      String capacity,
      String rate,
      String wallPenetration,
      String primaryColor,
      String secondaryColor,
      List<DistanceRate> distanceRate,
      List<String> otherSkin});
}

/// @nodoc
class _$WeaponCopyWithImpl<$Res> implements $WeaponCopyWith<$Res> {
  _$WeaponCopyWithImpl(this._value, this._then);

  final Weapon _value;
  // ignore: unused_field
  final $Res Function(Weapon) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? fireModes = freezed,
    Object? imagePath = freezed,
    Object? cost = freezed,
    Object? capacity = freezed,
    Object? rate = freezed,
    Object? wallPenetration = freezed,
    Object? primaryColor = freezed,
    Object? secondaryColor = freezed,
    Object? distanceRate = freezed,
    Object? otherSkin = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      fireModes: fireModes == freezed
          ? _value.fireModes
          : fireModes // ignore: cast_nullable_to_non_nullable
              as List<FireModes>,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      wallPenetration: wallPenetration == freezed
          ? _value.wallPenetration
          : wallPenetration // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      distanceRate: distanceRate == freezed
          ? _value.distanceRate
          : distanceRate // ignore: cast_nullable_to_non_nullable
              as List<DistanceRate>,
      otherSkin: otherSkin == freezed
          ? _value.otherSkin
          : otherSkin // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$WeaponCopyWith<$Res> implements $WeaponCopyWith<$Res> {
  factory _$WeaponCopyWith(_Weapon value, $Res Function(_Weapon) then) =
      __$WeaponCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String description,
      String key,
      List<FireModes> fireModes,
      String imagePath,
      String cost,
      String capacity,
      String rate,
      String wallPenetration,
      String primaryColor,
      String secondaryColor,
      List<DistanceRate> distanceRate,
      List<String> otherSkin});
}

/// @nodoc
class __$WeaponCopyWithImpl<$Res> extends _$WeaponCopyWithImpl<$Res>
    implements _$WeaponCopyWith<$Res> {
  __$WeaponCopyWithImpl(_Weapon _value, $Res Function(_Weapon) _then)
      : super(_value, (v) => _then(v as _Weapon));

  @override
  _Weapon get _value => super._value as _Weapon;

  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? fireModes = freezed,
    Object? imagePath = freezed,
    Object? cost = freezed,
    Object? capacity = freezed,
    Object? rate = freezed,
    Object? wallPenetration = freezed,
    Object? primaryColor = freezed,
    Object? secondaryColor = freezed,
    Object? distanceRate = freezed,
    Object? otherSkin = freezed,
  }) {
    return _then(_Weapon(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      fireModes: fireModes == freezed
          ? _value.fireModes
          : fireModes // ignore: cast_nullable_to_non_nullable
              as List<FireModes>,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      wallPenetration: wallPenetration == freezed
          ? _value.wallPenetration
          : wallPenetration // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      distanceRate: distanceRate == freezed
          ? _value.distanceRate
          : distanceRate // ignore: cast_nullable_to_non_nullable
              as List<DistanceRate>,
      otherSkin: otherSkin == freezed
          ? _value.otherSkin
          : otherSkin // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weapon implements _Weapon {
  _$_Weapon(
      {required this.type,
      required this.description,
      required this.key,
      this.fireModes = const [],
      required this.imagePath,
      required this.cost,
      required this.capacity,
      required this.rate,
      required this.wallPenetration,
      required this.primaryColor,
      required this.secondaryColor,
      this.distanceRate = const [],
      this.otherSkin = const []});

  factory _$_Weapon.fromJson(Map<String, dynamic> json) =>
      _$_$_WeaponFromJson(json);

  @override // 6. list all the arguments/properties
  final String type;
  @override
  final String description;
  @override
  final String key;
  @JsonKey(defaultValue: const [])
  @override
  final List<FireModes> fireModes;
  @override
  final String imagePath;
  @override
  final String cost;
  @override
  final String capacity;
  @override
  final String rate;
  @override
  final String wallPenetration;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;
  @JsonKey(defaultValue: const [])
  @override
  final List<DistanceRate> distanceRate;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> otherSkin;

  @override
  String toString() {
    return 'Weapon(type: $type, description: $description, key: $key, fireModes: $fireModes, imagePath: $imagePath, cost: $cost, capacity: $capacity, rate: $rate, wallPenetration: $wallPenetration, primaryColor: $primaryColor, secondaryColor: $secondaryColor, distanceRate: $distanceRate, otherSkin: $otherSkin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weapon &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.fireModes, fireModes) ||
                const DeepCollectionEquality()
                    .equals(other.fireModes, fireModes)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.capacity, capacity) ||
                const DeepCollectionEquality()
                    .equals(other.capacity, capacity)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.wallPenetration, wallPenetration) ||
                const DeepCollectionEquality()
                    .equals(other.wallPenetration, wallPenetration)) &&
            (identical(other.primaryColor, primaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.primaryColor, primaryColor)) &&
            (identical(other.secondaryColor, secondaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryColor, secondaryColor)) &&
            (identical(other.distanceRate, distanceRate) ||
                const DeepCollectionEquality()
                    .equals(other.distanceRate, distanceRate)) &&
            (identical(other.otherSkin, otherSkin) ||
                const DeepCollectionEquality()
                    .equals(other.otherSkin, otherSkin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(fireModes) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(capacity) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(wallPenetration) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor) ^
      const DeepCollectionEquality().hash(distanceRate) ^
      const DeepCollectionEquality().hash(otherSkin);

  @JsonKey(ignore: true)
  @override
  _$WeaponCopyWith<_Weapon> get copyWith =>
      __$WeaponCopyWithImpl<_Weapon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeaponToJson(this);
  }
}

abstract class _Weapon implements Weapon {
  factory _Weapon(
      {required String type,
      required String description,
      required String key,
      List<FireModes> fireModes,
      required String imagePath,
      required String cost,
      required String capacity,
      required String rate,
      required String wallPenetration,
      required String primaryColor,
      required String secondaryColor,
      List<DistanceRate> distanceRate,
      List<String> otherSkin}) = _$_Weapon;

  factory _Weapon.fromJson(Map<String, dynamic> json) = _$_Weapon.fromJson;

  @override // 6. list all the arguments/properties
  String get type => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  List<FireModes> get fireModes => throw _privateConstructorUsedError;
  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  String get cost => throw _privateConstructorUsedError;
  @override
  String get capacity => throw _privateConstructorUsedError;
  @override
  String get rate => throw _privateConstructorUsedError;
  @override
  String get wallPenetration => throw _privateConstructorUsedError;
  @override
  String get primaryColor => throw _privateConstructorUsedError;
  @override
  String get secondaryColor => throw _privateConstructorUsedError;
  @override
  List<DistanceRate> get distanceRate => throw _privateConstructorUsedError;
  @override
  List<String> get otherSkin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeaponCopyWith<_Weapon> get copyWith => throw _privateConstructorUsedError;
}
