// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bestteamcomp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BestTeamComp _$BestTeamCompFromJson(Map<String, dynamic> json) {
  return _BestTeamComp.fromJson(json);
}

/// @nodoc
class _$BestTeamCompTearOff {
  const _$BestTeamCompTearOff();

  _BestTeamComp call(
      {required List<String> names,
      required int rankAttack,
      required int rankDefend}) {
    return _BestTeamComp(
      names: names,
      rankAttack: rankAttack,
      rankDefend: rankDefend,
    );
  }

  BestTeamComp fromJson(Map<String, Object> json) {
    return BestTeamComp.fromJson(json);
  }
}

/// @nodoc
const $BestTeamComp = _$BestTeamCompTearOff();

/// @nodoc
mixin _$BestTeamComp {
// 6. list all the arguments/properties
  List<String> get names => throw _privateConstructorUsedError;
  int get rankAttack => throw _privateConstructorUsedError;
  int get rankDefend => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestTeamCompCopyWith<BestTeamComp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestTeamCompCopyWith<$Res> {
  factory $BestTeamCompCopyWith(
          BestTeamComp value, $Res Function(BestTeamComp) then) =
      _$BestTeamCompCopyWithImpl<$Res>;
  $Res call({List<String> names, int rankAttack, int rankDefend});
}

/// @nodoc
class _$BestTeamCompCopyWithImpl<$Res> implements $BestTeamCompCopyWith<$Res> {
  _$BestTeamCompCopyWithImpl(this._value, this._then);

  final BestTeamComp _value;
  // ignore: unused_field
  final $Res Function(BestTeamComp) _then;

  @override
  $Res call({
    Object? names = freezed,
    Object? rankAttack = freezed,
    Object? rankDefend = freezed,
  }) {
    return _then(_value.copyWith(
      names: names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rankAttack: rankAttack == freezed
          ? _value.rankAttack
          : rankAttack // ignore: cast_nullable_to_non_nullable
              as int,
      rankDefend: rankDefend == freezed
          ? _value.rankDefend
          : rankDefend // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BestTeamCompCopyWith<$Res>
    implements $BestTeamCompCopyWith<$Res> {
  factory _$BestTeamCompCopyWith(
          _BestTeamComp value, $Res Function(_BestTeamComp) then) =
      __$BestTeamCompCopyWithImpl<$Res>;
  @override
  $Res call({List<String> names, int rankAttack, int rankDefend});
}

/// @nodoc
class __$BestTeamCompCopyWithImpl<$Res> extends _$BestTeamCompCopyWithImpl<$Res>
    implements _$BestTeamCompCopyWith<$Res> {
  __$BestTeamCompCopyWithImpl(
      _BestTeamComp _value, $Res Function(_BestTeamComp) _then)
      : super(_value, (v) => _then(v as _BestTeamComp));

  @override
  _BestTeamComp get _value => super._value as _BestTeamComp;

  @override
  $Res call({
    Object? names = freezed,
    Object? rankAttack = freezed,
    Object? rankDefend = freezed,
  }) {
    return _then(_BestTeamComp(
      names: names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rankAttack: rankAttack == freezed
          ? _value.rankAttack
          : rankAttack // ignore: cast_nullable_to_non_nullable
              as int,
      rankDefend: rankDefend == freezed
          ? _value.rankDefend
          : rankDefend // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BestTeamComp implements _BestTeamComp {
  _$_BestTeamComp(
      {required this.names,
      required this.rankAttack,
      required this.rankDefend});

  factory _$_BestTeamComp.fromJson(Map<String, dynamic> json) =>
      _$_$_BestTeamCompFromJson(json);

  @override // 6. list all the arguments/properties
  final List<String> names;
  @override
  final int rankAttack;
  @override
  final int rankDefend;

  @override
  String toString() {
    return 'BestTeamComp(names: $names, rankAttack: $rankAttack, rankDefend: $rankDefend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BestTeamComp &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)) &&
            (identical(other.rankAttack, rankAttack) ||
                const DeepCollectionEquality()
                    .equals(other.rankAttack, rankAttack)) &&
            (identical(other.rankDefend, rankDefend) ||
                const DeepCollectionEquality()
                    .equals(other.rankDefend, rankDefend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(names) ^
      const DeepCollectionEquality().hash(rankAttack) ^
      const DeepCollectionEquality().hash(rankDefend);

  @JsonKey(ignore: true)
  @override
  _$BestTeamCompCopyWith<_BestTeamComp> get copyWith =>
      __$BestTeamCompCopyWithImpl<_BestTeamComp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BestTeamCompToJson(this);
  }
}

abstract class _BestTeamComp implements BestTeamComp {
  factory _BestTeamComp(
      {required List<String> names,
      required int rankAttack,
      required int rankDefend}) = _$_BestTeamComp;

  factory _BestTeamComp.fromJson(Map<String, dynamic> json) =
      _$_BestTeamComp.fromJson;

  @override // 6. list all the arguments/properties
  List<String> get names => throw _privateConstructorUsedError;
  @override
  int get rankAttack => throw _privateConstructorUsedError;
  @override
  int get rankDefend => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BestTeamCompCopyWith<_BestTeamComp> get copyWith =>
      throw _privateConstructorUsedError;
}
