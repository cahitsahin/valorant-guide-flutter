import 'package:flutter/material.dart';
import 'package:valorant/data/weaponsData.dart';
import 'package:valorant/models/weapon.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';

class WeaponList extends StatefulWidget {
  @override
  _WeaponListState createState() => _WeaponListState();
}

class _WeaponListState extends State<WeaponList> {
  List<Weapon> allWeapons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Weapons",
          style: AppTheme.subHeading.copyWith(color: Colors.black),
        ),
      ),
      body: FutureBuilder(
        future: WeaponData().readJsonObject(),
        builder: (context, result) {
          if (result.hasData) {
            allWeapons = result.data;
            return SafeArea(
                child: ListView.builder(
              itemCount: allWeapons.length,
              itemBuilder: (BuildContext context, int index) {
                return weaponsRow(context, index, allWeapons[index]);
              },
            ));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Widget weaponsRow(BuildContext context, int index, Weapon weapon) {
  Color cardColor = Colors.white;
  if (weapon.type == "Sidearm") {
    cardColor = Colors.cyan[200];
  } else if (weapon.type == "Shotgun") {
    cardColor = Colors.lime[200];
  }
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 4),
    child: Card(
      shadowColor: cardColor,
      elevation: 5,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, cardColor]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListTile(
            title: Text(
              weapon.key,
              style: AppTheme.subHeading.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            leading: Image.asset(
              weapon.imagePath,
              width: 100,
            ),
            subtitle: Text(
              weapon.type,
              style: AppTheme.subHeading.copyWith(
                  color: Colors.black45,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Column(
              children: [
                Image.asset(
                  "assets/images/profileIcons/cost.png",
                  height: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  weapon.cost,
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
