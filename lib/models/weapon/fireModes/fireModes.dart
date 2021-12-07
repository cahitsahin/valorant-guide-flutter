
import 'package:freezed_annotation/freezed_annotation.dart';
part 'fireModes.freezed.dart';
part 'fireModes.g.dart';


@freezed
// 4. define a class with a mixin
class FireModes with _$FireModes {
  // 5. define a factory constructor
  factory FireModes({
    // 6. list all the arguments/properties
    required   String name,
    required String rate,
    // 7. assign it with the `_Review` class constructor
  }) = _FireModes;

  // 8. define another factory constructor to parse from json
  factory FireModes.fromJson(Map<String, dynamic> json) => _$FireModesFromJson(json);
}