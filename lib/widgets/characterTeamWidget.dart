import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/models/character/character/characters.dart';
import 'package:valorant/services/style.dart';


class CharacterTeamWidget extends StatefulWidget {
  final Character character;
  final List<Character> team;
  final double screenHeight;
  final double screenWidth;

  CharacterTeamWidget(
      { Key? key,
      required this.character,
      required this.screenHeight,
      required this.screenWidth,
      required this.team})
      : super(key: key);

  @override
  State<CharacterTeamWidget> createState() => _CharacterTeamWidgetState();
}

class _CharacterTeamWidgetState extends State<CharacterTeamWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 10,
        child: Container(
          width: widget.screenWidth*0.9,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(4),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            controller: PageController(viewportFraction: 0.9),
            itemBuilder: (context, index) {
             return  Row(
               children: [
                 Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(widget.team[index].iconPath),
                      ),
                      Text(widget.team[index].key, style: AppTheme.subHeading.copyWith(
                          fontSize: 12, color: Colors.black),)
                    ],
                 ),
                 SizedBox(width: 10,)
               ],
             );
            }
          ),
        ),
      ),
    );
  }
}
