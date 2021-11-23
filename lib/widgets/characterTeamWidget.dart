import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';


class CharacterTeamWidget extends StatefulWidget {
  final Character character;
  final List<Character> team;
  final double screenHeight;
  final double screenWidth;

  CharacterTeamWidget(
      {Key key,
      this.character,
      this.screenHeight,
      this.screenWidth,
      this.team})
      : super(key: key);

  @override
  State<CharacterTeamWidget> createState() => _CharacterTeamWidgetState();
}

class _CharacterTeamWidgetState extends State<CharacterTeamWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Image.asset( widget.team[0].iconPath,),
                ),
                Text(widget.team[0].key)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,

                  child: Image.asset( widget.team[1].iconPath,),
                ),
                Text(widget.team[1].key)
              ],
            ),Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,

                  child: Image.asset( widget.team[2].iconPath,),
                ),
                Text(widget.team[2].key)
              ],
            ),Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,

                  child: Image.asset( widget.team[3].iconPath,),
                ),
                Text(widget.team[3].key)
              ],
            ),Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,

                  child: Image.asset( widget.team[4].iconPath,),
                ),
                Text(widget.team[4].key)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
