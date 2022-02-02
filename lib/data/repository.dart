import 'package:flutter/services.dart';

class Repository {
  Future<dynamic> readJsonCharacter() async {
    try {
      return await rootBundle.loadString("assets/data/characters.json");
    } catch (e) {
      return e.toString();
    }
  }

  Future<dynamic> readJsonMap() async {
    try {
      return await rootBundle.loadString("assets/data/maps.json");
    } catch (e) {
      return e.toString();
    }
  }

  Future<dynamic> readJsonWeapon() async {
    try {
      return await rootBundle.loadString("assets/data/weapons.json");
    } catch (e) {
      return e.toString();
    }
  }
}

class MapsData {
  Future<dynamic> readJsonObject() async {
    try {
      return await rootBundle.loadString("assets/data/maps.json");
    } catch (e) {
      return e.toString();
    }
  }
}

class WeaponData {
  Future<dynamic> readJsonObject() async {
    try {
      return await rootBundle.loadString("assets/data/weapons.json");
    } catch (e) {
      return e.toString();
    }
  }
}
