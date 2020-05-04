import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:valorant/models/characters.dart';

class CharacterData {

  Future<List<Character>> readJsonObject() async {
    var comingJson = await rootBundle.loadString("assets/data/characters.json");
    List<Character> jsonList = (json.decode(comingJson) as List)
        .map((f) => Character.fromJson(f))
        .toList();

    return jsonList;
  }
}