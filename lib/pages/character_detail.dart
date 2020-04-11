import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/widgets/character_abilities_widget.dart';
import 'package:valorant/widgets/character_widget.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;

  CharacterDetailScreen({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: "background-${widget.character.key}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    getColorFromHex(widget.character.secondaryColor),
                    getColorFromHex(widget.character.primaryColor)
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconSize: 32,
                      icon: Icon(
                        Icons.close,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Hero(
                      tag: "image-${widget.character.key}",
                      child: Image.asset(
                        widget.character.imagePath,
                        width: screenWidth * 0.6,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: "name-${widget.character.key}",
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            child: Text(
                              widget.character.key,
                              style: AppTheme.heading.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        widget.character.description,
                        style: AppTheme.subHeading.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 40,
                  color: Colors.white70,
                ),
                CharacterAbilitiesWidget(character: widget.character,screenHeight: screenHeight,screenWidth: screenWidth,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
