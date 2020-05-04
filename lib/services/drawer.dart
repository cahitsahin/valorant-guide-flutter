import 'package:flutter/material.dart';
import 'package:valorant/pages/characterList.dart';
import 'package:valorant/pages/weaponList.dart';
import 'package:valorant/services/style.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CharacterList(),
                    ),
                  );
                }
            ),
            _createDrawerItem(
                icon: Icons.videogame_asset,
                text: 'Weapons',
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WeaponList(),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget _createHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 94,bottom: 12),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "Valorant",
              style: AppTheme.display1.copyWith(color: Colors.black)
            ),
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
      {IconData icon, String text, GestureTapCallback onTap}) {
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
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

}
