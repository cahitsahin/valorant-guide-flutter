// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'distanceRate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DistanceRate _$DistanceRateFromJson(Map<String, dynamic> json) {
  return _DistanceRate.fromJson(json);
}

/// @nodoc
class _$DistanceRateTearOff {
  const _$DistanceRateTearOff();

  _DistanceRate call(
      {required String distance,
      required String head,
      required String body,
      required String leg}) {
    return _DistanceRate(
      distance: distance,
      head: head,
      body: body,
      leg: leg,
    );
  }

  DistanceRate fromJson(Map<String, Object> json) {
    return DistanceRate.fromJson(json);
  }
}

/// @nodoc
const $DistanceRate = _$DistanceRateTearOff();

/// @nodoc
mixin _$DistanceRate {
// 6. list all the arguments/properties
  String get distance => throw _privateConstructorUsedError;
  String get head => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get leg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistanceRateCopyWith<DistanceRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceRateCopyWith<$Res> {
  factory $DistanceRateCopyWith(
          DistanceRate value, $Res Function(DistanceRate) then) =
      _$DistanceRateCopyWithImpl<$Res>;
  $Res call({String distance, String head, String body, String leg});
}

/// @nodoc
class _$DistanceRateCopyWithImpl<$Res> implements $DistanceRateCopyWith<$Res> {
  _$DistanceRateCopyWithImpl(this._value, this._then);

  final DistanceRate _value;
  // ignore: unused_field
  final $Res Function(DistanceRate) _then;

  @override
  $Res call({
    Object? distance = freezed,
    Object? head = freezed,
    Object? body = freezed,
    Object? leg = freezed,
  }) {
    return _then(_value.copyWith(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      leg: leg == freezed
          ? _value.leg
          : leg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DistanceRateCopyWith<$Res>
    implements $DistanceRateCopyWith<$Res> {
  factory _$DistanceRateCopyWith(
          _DistanceRate value, $Res Function(_DistanceRate) then) =
      __$DistanceRateCopyWithImpl<$Res>;
  @override
  $Res call({String distance, String head, String body, String leg});
}

/// @nodoc
class __$DistanceRateCopyWithImpl<$Res> extends _$DistanceRateCopyWithImpl<$Res>
    implements _$DistanceRateCopyWith<$Res> {
  __$DistanceRateCopyWithImpl(
      _DistanceRate _value, $Res Function(_DistanceRate) _then)
      : super(_value, (v) => _then(v as _DistanceRate));

  @override
  _DistanceRate get _value => super._value as _DistanceRate;

  @override
  $Res call({
    Object? distance = freezed,
    Object? head = freezed,
    Object? body = freezed,
    Object? leg = freezed,
  }) {
    return _then(_DistanceRate(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      leg: leg == freezed
          ? _value.leg
          : leg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DistanceRate implements _DistanceRate {
  _$_DistanceRate(
      {required this.distance,
      required this.head,
      required this.body,
      required this.leg});

  factory _$_DistanceRate.fromJson(Map<String, dynamic> json) =>
      _$_$_DistanceRateFromJson(json);

  @override // 6. list all the arguments/properties
  final String distance;
  @override
  final String head;
  @override
  final String body;
  @override
  final String leg;

  @override
  String toString() {
    return 'DistanceRate(distance: $distance, head: $head, body: $body, leg: $leg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DistanceRate &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.head, head) ||
                const DeepCollectionEquality().equals(other.head, head)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.leg, leg) ||
                const DeepCollectionEquality().equals(other.leg, leg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(head) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(leg);

  @JsonKey(ignore: true)
  @override
  _$DistanceRateCopyWith<_DistanceRate> get copyWith =>
      __$DistanceRateCopyWithImpl<_DistanceRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DistanceRateToJson(this);
  }
}

abstract class _DistanceRate implements DistanceRate {
  factory _DistanceRate(
      {required String distance,
      required String head,
      required String body,
      required String leg}) = _$_DistanceRate;

  factory _DistanceRate.fromJson(Map<String, dynamic> json) =
      _$_DistanceRate.fromJson;

  @override // 6. list all the arguments/properties
  String get distance => throw _privateConstructorUsedError;
  @override
  String get head => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get leg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DistanceRateCopyWith<_DistanceRate> get copyWith =>
      throw _privateConstructorUsedError;
}
