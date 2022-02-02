import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/bloc/character/character_bloc.dart';
import 'package:valorant/bloc/map/map_bloc.dart';
import 'package:valorant/bloc/weapon/weapon_bloc.dart';
import 'package:valorant/data/repository.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/ui/pages/characterList.dart';
import 'package:valorant/ui/pages/mapsList.dart';
import 'package:valorant/ui/pages/weaponList.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    return Drawer(
      elevation: 10,
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(
                icon: Icons.people,
                text: 'Characters',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => CharacterBloc(repo),
                        child: CharacterList(),
                      ),
                    ),
                  );
                }),
            _createDrawerItem(
                icon: Icons.gps_fixed,
                text: 'Weapons',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => WeaponBloc(repo),
                        child: WeaponList(),
                      ),
                    ),
                  );
                }),
            _createDrawerItem(
                icon: Icons.map,
                text: 'Maps',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => MapBloc(repo),
                        child: MapsList(),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Widget _createHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 94, bottom: 12),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Valorant",
                style: AppTheme.display1.copyWith(color: Colors.black)),
            subtitle: Text(
              " Guide",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Divider(
            height: 64,
            thickness: 0.5,
            color: Colors.black.withOpacity(0.3),
            indent: 32,
            endIndent: 32,
          )
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 35,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
