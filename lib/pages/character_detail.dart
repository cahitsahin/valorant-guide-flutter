import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';
import 'file:///D:/flutter/valorant/lib/services/style.dart';
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
                  colors: [getColorFromHex(widget.character.primaryColor),getColorFromHex(widget.character.secondaryColor)],
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
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      widget.character.imagePath,
                      height: screenHeight * 0.45,
                    ),
                  ),
                ),
                Hero(
                  tag: "name-${widget.character.key}",
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 8),
                        child: Text(
                          widget.character.key,
                          style: AppTheme.heading,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Text(
                    widget.character.description,
                    style: AppTheme.subHeading,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
