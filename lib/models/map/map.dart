import 'package:freezed_annotation/freezed_annotation.dart';


part 'map.freezed.dart';
part 'map.g.dart';


@freezed
class Maps with _$Maps {
  // 5. define a factory constructor
   factory Maps({
    // 6. list all the arguments/properties
    required String displayName,
    required String splash,
    required String displayIcon,
    required String coordinates,
    // 7. assign it with the `_Review` class constructor
  }) = _Maps;

  // 8. define another factory constructor to parse from json
  factory Maps.fromJson(Map<String, dynamic> json) => _$MapsFromJson(json);
}



// class Maps {
//   String displayName;
//   String coordinates;
//   String displayIcon;
//   String splash;
//
//
//   Maps(
//       {this.displayName,
//         this.coordinates,
//         this.displayIcon,
//         this.splash,});
//
//   Maps.fromJson(Map<String, dynamic> json) {
//     displayName = json['displayName'];
//     coordinates = json['coordinates'];
//     displayIcon = json['displayIcon'];
//     splash = json['splash'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['displayName'] = this.displayName;
//     data['coordinates'] = this.coordinates;
//     data['displayIcon'] = this.displayIcon;
//     data['splash'] = this.splash;
//     return data;
//   }
// }


