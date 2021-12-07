// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Maps _$MapsFromJson(Map<String, dynamic> json) {
  return _Maps.fromJson(json);
}

/// @nodoc
class _$MapsTearOff {
  const _$MapsTearOff();

  _Maps call(
      {required String displayName,
      required String splash,
      required String displayIcon,
      required String coordinates}) {
    return _Maps(
      displayName: displayName,
      splash: splash,
      displayIcon: displayIcon,
      coordinates: coordinates,
    );
  }

  Maps fromJson(Map<String, Object> json) {
    return Maps.fromJson(json);
  }
}

/// @nodoc
const $Maps = _$MapsTearOff();

/// @nodoc
mixin _$Maps {
// 6. list all the arguments/properties
  String get displayName => throw _privateConstructorUsedError;
  String get splash => throw _privateConstructorUsedError;
  String get displayIcon => throw _privateConstructorUsedError;
  String get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapsCopyWith<Maps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsCopyWith<$Res> {
  factory $MapsCopyWith(Maps value, $Res Function(Maps) then) =
      _$MapsCopyWithImpl<$Res>;
  $Res call(
      {String displayName,
      String splash,
      String displayIcon,
      String coordinates});
}

/// @nodoc
class _$MapsCopyWithImpl<$Res> implements $MapsCopyWith<$Res> {
  _$MapsCopyWithImpl(this._value, this._then);

  final Maps _value;
  // ignore: unused_field
  final $Res Function(Maps) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? splash = freezed,
    Object? displayIcon = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      splash: splash == freezed
          ? _value.splash
          : splash // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MapsCopyWith<$Res> implements $MapsCopyWith<$Res> {
  factory _$MapsCopyWith(_Maps value, $Res Function(_Maps) then) =
      __$MapsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String splash,
      String displayIcon,
      String coordinates});
}

/// @nodoc
class __$MapsCopyWithImpl<$Res> extends _$MapsCopyWithImpl<$Res>
    implements _$MapsCopyWith<$Res> {
  __$MapsCopyWithImpl(_Maps _value, $Res Function(_Maps) _then)
      : super(_value, (v) => _then(v as _Maps));

  @override
  _Maps get _value => super._value as _Maps;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? splash = freezed,
    Object? displayIcon = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_Maps(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      splash: splash == freezed
          ? _value.splash
          : splash // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: displayIcon == freezed
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Maps implements _Maps {
  _$_Maps(
      {required this.displayName,
      required this.splash,
      required this.displayIcon,
      required this.coordinates});

  factory _$_Maps.fromJson(Map<String, dynamic> json) =>
      _$_$_MapsFromJson(json);

  @override // 6. list all the arguments/properties
  final String displayName;
  @override
  final String splash;
  @override
  final String displayIcon;
  @override
  final String coordinates;

  @override
  String toString() {
    return 'Maps(displayName: $displayName, splash: $splash, displayIcon: $displayIcon, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Maps &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.splash, splash) ||
                const DeepCollectionEquality().equals(other.splash, splash)) &&
            (identical(other.displayIcon, displayIcon) ||
                const DeepCollectionEquality()
                    .equals(other.displayIcon, displayIcon)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(splash) ^
      const DeepCollectionEquality().hash(displayIcon) ^
      const DeepCollectionEquality().hash(coordinates);

  @JsonKey(ignore: true)
  @override
  _$MapsCopyWith<_Maps> get copyWith =>
      __$MapsCopyWithImpl<_Maps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MapsToJson(this);
  }
}

abstract class _Maps implements Maps {
  factory _Maps(
      {required String displayName,
      required String splash,
      required String displayIcon,
      required String coordinates}) = _$_Maps;

  factory _Maps.fromJson(Map<String, dynamic> json) = _$_Maps.fromJson;

  @override // 6. list all the arguments/properties
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get splash => throw _privateConstructorUsedError;
  @override
  String get displayIcon => throw _privateConstructorUsedError;
  @override
  String get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MapsCopyWith<_Maps> get copyWith => throw _privateConstructorUsedError;
}
