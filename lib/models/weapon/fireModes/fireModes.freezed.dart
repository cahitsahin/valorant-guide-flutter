// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fireModes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FireModes _$FireModesFromJson(Map<String, dynamic> json) {
  return _FireModes.fromJson(json);
}

/// @nodoc
class _$FireModesTearOff {
  const _$FireModesTearOff();

  _FireModes call({required String name, required String rate}) {
    return _FireModes(
      name: name,
      rate: rate,
    );
  }

  FireModes fromJson(Map<String, Object> json) {
    return FireModes.fromJson(json);
  }
}

/// @nodoc
const $FireModes = _$FireModesTearOff();

/// @nodoc
mixin _$FireModes {
// 6. list all the arguments/properties
  String get name => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FireModesCopyWith<FireModes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireModesCopyWith<$Res> {
  factory $FireModesCopyWith(FireModes value, $Res Function(FireModes) then) =
      _$FireModesCopyWithImpl<$Res>;
  $Res call({String name, String rate});
}

/// @nodoc
class _$FireModesCopyWithImpl<$Res> implements $FireModesCopyWith<$Res> {
  _$FireModesCopyWithImpl(this._value, this._then);

  final FireModes _value;
  // ignore: unused_field
  final $Res Function(FireModes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FireModesCopyWith<$Res> implements $FireModesCopyWith<$Res> {
  factory _$FireModesCopyWith(
          _FireModes value, $Res Function(_FireModes) then) =
      __$FireModesCopyWithImpl<$Res>;
  @override
  $Res call({String name, String rate});
}

/// @nodoc
class __$FireModesCopyWithImpl<$Res> extends _$FireModesCopyWithImpl<$Res>
    implements _$FireModesCopyWith<$Res> {
  __$FireModesCopyWithImpl(_FireModes _value, $Res Function(_FireModes) _then)
      : super(_value, (v) => _then(v as _FireModes));

  @override
  _FireModes get _value => super._value as _FireModes;

  @override
  $Res call({
    Object? name = freezed,
    Object? rate = freezed,
  }) {
    return _then(_FireModes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FireModes implements _FireModes {
  _$_FireModes({required this.name, required this.rate});

  factory _$_FireModes.fromJson(Map<String, dynamic> json) =>
      _$_$_FireModesFromJson(json);

  @override // 6. list all the arguments/properties
  final String name;
  @override
  final String rate;

  @override
  String toString() {
    return 'FireModes(name: $name, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FireModes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rate);

  @JsonKey(ignore: true)
  @override
  _$FireModesCopyWith<_FireModes> get copyWith =>
      __$FireModesCopyWithImpl<_FireModes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FireModesToJson(this);
  }
}

abstract class _FireModes implements FireModes {
  factory _FireModes({required String name, required String rate}) =
      _$_FireModes;

  factory _FireModes.fromJson(Map<String, dynamic> json) =
      _$_FireModes.fromJson;

  @override // 6. list all the arguments/properties
  String get name => throw _privateConstructorUsedError;
  @override
  String get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FireModesCopyWith<_FireModes> get copyWith =>
      throw _privateConstructorUsedError;
}
