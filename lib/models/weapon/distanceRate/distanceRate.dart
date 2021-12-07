
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'distanceRate.freezed.dart';
part 'distanceRate.g.dart';


@freezed
// 4. define a class with a mixin
class DistanceRate with _$DistanceRate {
  // 5. define a factory constructor
  factory DistanceRate({
    // 6. list all the arguments/properties
    required  String distance,
    required String head,
    required String body,
    required String leg,
    // 7. assign it with the `_Review` class constructor
  }) = _DistanceRate;

  // 8. define another factory constructor to parse from json
  factory DistanceRate.fromJson(Map<String, dynamic> json) => _$DistanceRateFromJson(json);
}