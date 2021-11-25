import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:valorant/models/map.dart';

class MapsData {

  Future<List<Maps>> readJsonObject() async {
    var comingJson = await rootBundle.loadString("assets/data/maps.json");
    List<Maps> jsonList = (json.decode(comingJson) as List)
        .map((f) => Maps.fromJson(f))
        .toList();
    return jsonList;
  }
}