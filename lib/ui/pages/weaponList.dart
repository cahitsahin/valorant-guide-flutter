import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/bloc/weapon/weapon_bloc.dart';
import 'package:valorant/bloc/weapon/weapon_event.dart';
import 'package:valorant/bloc/weapon/weapon_state.dart';
import 'package:valorant/models/weapon/weapon/weapon.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/ui/pages/weaponDetail.dart';
import 'package:valorant/ui/widgets/characterWidget.dart';

class WeaponList extends StatefulWidget {
  @override
  _WeaponListState createState() => _WeaponListState();
}

class _WeaponListState extends State<WeaponList> {
  List<Weapon> _weapons = [];

  _loadWeapons() async {
    BlocProvider.of<WeaponBloc>(context).add(const WeaponFetchEvent());
  }

  @override
  void initState() {
    super.initState();
    _loadWeapons();
  }

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
      body: BlocConsumer<WeaponBloc, WeaponState>(
        listener: (context, state) {
          if (state is WeaponLoadingState) {
          } else if (state is WeaponSuccessState && state.weapons.isEmpty) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('No more Characters')));
          } else if (state is WeaponErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
            BlocProvider.of<WeaponBloc>(context).isFetching = false;
          }
          return;
        },
        builder: (context, state) {
          if (state is WeaponInitialState ||
              state is WeaponLoadingState && _weapons.isEmpty) {
            return CircularProgressIndicator();
          } else if (state is WeaponSuccessState) {
            _weapons.addAll(state.weapons);
            BlocProvider.of<WeaponBloc>(context).isFetching = false;
          } else if (state is WeaponErrorState && _weapons.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    BlocProvider.of<WeaponBloc>(context)
                      ..isFetching = true
                      ..add(WeaponFetchEvent());
                  },
                  icon: Icon(Icons.refresh),
                ),
                const SizedBox(height: 15),
                Text(state.error, textAlign: TextAlign.center),
              ],
            );
          }
          return SafeArea(
              child: ListView.builder(
            itemCount: _weapons.length,
            itemBuilder: (BuildContext context, int index) {
              return weaponsRow(_weapons[index], context);
            },
          ));
        },
      ),
    );
  }
}

Widget weaponsRow(Weapon weapon, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 4),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
            gradient: LinearGradient(colors: [
              getColorFromHex(weapon.secondaryColor),
              getColorFromHex(weapon.primaryColor)
            ]),
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
