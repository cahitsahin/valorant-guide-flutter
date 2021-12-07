// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return _Abilities.fromJson(json);
}

/// @nodoc
class _$AbilitiesTearOff {
  const _$AbilitiesTearOff();

  _Abilities call(
      {required String type,
      required String name,
      required String imagePath,
      required String description,
      required String cost,
      required int charges}) {
    return _Abilities(
      type: type,
      name: name,
      imagePath: imagePath,
      description: description,
      cost: cost,
      charges: charges,
    );
  }

  Abilities fromJson(Map<String, Object> json) {
    return Abilities.fromJson(json);
  }
}

/// @nodoc
const $Abilities = _$AbilitiesTearOff();

/// @nodoc
mixin _$Abilities {
// 6. list all the arguments/properties
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  int get charges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilitiesCopyWith<Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitiesCopyWith<$Res> {
  factory $AbilitiesCopyWith(Abilities value, $Res Function(Abilities) then) =
      _$AbilitiesCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String name,
      String imagePath,
      String description,
      String cost,
      int charges});
}

/// @nodoc
class _$AbilitiesCopyWithImpl<$Res> implements $AbilitiesCopyWith<$Res> {
  _$AbilitiesCopyWithImpl(this._value, this._then);

  final Abilities _value;
  // ignore: unused_field
  final $Res Function(Abilities) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? description = freezed,
    Object? cost = freezed,
    Object? charges = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      charges: charges == freezed
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AbilitiesCopyWith<$Res> implements $AbilitiesCopyWith<$Res> {
  factory _$AbilitiesCopyWith(
          _Abilities value, $Res Function(_Abilities) then) =
      __$AbilitiesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String name,
      String imagePath,
      String description,
      String cost,
      int charges});
}

/// @nodoc
class __$AbilitiesCopyWithImpl<$Res> extends _$AbilitiesCopyWithImpl<$Res>
    implements _$AbilitiesCopyWith<$Res> {
  __$AbilitiesCopyWithImpl(_Abilities _value, $Res Function(_Abilities) _then)
      : super(_value, (v) => _then(v as _Abilities));

  @override
  _Abilities get _value => super._value as _Abilities;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? description = freezed,
    Object? cost = freezed,
    Object? charges = freezed,
  }) {
    return _then(_Abilities(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      charges: charges == freezed
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Abilities implements _Abilities {
  _$_Abilities(
      {required this.type,
      required this.name,
      required this.imagePath,
      required this.description,
      required this.cost,
      required this.charges});

  factory _$_Abilities.fromJson(Map<String, dynamic> json) =>
      _$_$_AbilitiesFromJson(json);

  @override // 6. list all the arguments/properties
  final String type;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final String description;
  @override
  final String cost;
  @override
  final int charges;

  @override
  String toString() {
    return 'Abilities(type: $type, name: $name, imagePath: $imagePath, description: $description, cost: $cost, charges: $charges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Abilities &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.charges, charges) ||
                const DeepCollectionEquality().equals(other.charges, charges)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(charges);

  @JsonKey(ignore: true)
  @override
  _$AbilitiesCopyWith<_Abilities> get copyWith =>
      __$AbilitiesCopyWithImpl<_Abilities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AbilitiesToJson(this);
  }
}

abstract class _Abilities implements Abilities {
  factory _Abilities(
      {required String type,
      required String name,
      required String imagePath,
      required String description,
      required String cost,
      required int charges}) = _$_Abilities;

  factory _Abilities.fromJson(Map<String, dynamic> json) =
      _$_Abilities.fromJson;

  @override // 6. list all the arguments/properties
  String get type => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get cost => throw _privateConstructorUsedError;
  @override
  int get charges => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AbilitiesCopyWith<_Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}
