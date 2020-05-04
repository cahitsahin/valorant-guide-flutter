import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:valorant/models/weapon.dart';

class WeaponData {

  Future<List<Weapon>> readJsonObject() async {
    var comingJson = await rootBundle.loadString("assets/data/weapons.json");
    List<Weapon> jsonList = (json.decode(comingJson) as List)
        .map((f) => Weapon.fromJson(f))
        .toList();

    return jsonList;
  }
}