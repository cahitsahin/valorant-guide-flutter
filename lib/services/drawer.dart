import 'package:flutter/material.dart';
import 'package:valorant/pages/character_list.dart';
import 'file:///D:/flutter/valorant/lib/services/style.dart';

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

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const MenuItem({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.pink,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 26, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
