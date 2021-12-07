import 'package:flutter/material.dart';
import 'package:valorant/data/weaponsData.dart';
import 'package:valorant/models/weapon/weapon/weapon.dart';
import 'package:valorant/pages/weaponDetail.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/widgets/characterWidget.dart';

class WeaponList extends StatefulWidget {
  @override
  _WeaponListState createState() => _WeaponListState();
}

class _WeaponListState extends State<WeaponList> {
  List<Weapon> allWeapons = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Weapons",
          style: AppTheme.subHeading.copyWith(color: Colors.black),
        ),
        foregroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: WeaponData().readJsonObject(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            allWeapons = snapshot.data![0];
            return SafeArea(
                child: ListView.builder(
              itemCount: allWeapons.length,
              itemBuilder: (BuildContext context, int index) {
                return weaponsRow(allWeapons[index],context);
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

Widget weaponsRow(Weapon weapon,BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 4),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      shadowColor: getColorFromHex(weapon.primaryColor),
      elevation: 8,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 350),
              pageBuilder: (context, _, __) =>
                  WeaponDetailScreen(weapon: weapon),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [getColorFromHex(weapon.secondaryColor), getColorFromHex(weapon.primaryColor)]),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Material(
              child: ListTile(
                title: Text(
                  weapon.key,
                  style: AppTheme.heading.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                leading: Hero(
                  tag: "image-${weapon.key}",
                  child: Image.asset(
                    weapon.imagePath,
                    width: 100,
                  ),
                ),
                subtitle: Text(
                  weapon.type,
                  style: AppTheme.subHeading.copyWith(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Column(
                  children: [
                    Image.asset(
                      "assets/images/profileIcons/cost.png",
                      color: Colors.black,
                      height: 30,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      weapon.cost,
                      style: AppTheme.subHeading.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
