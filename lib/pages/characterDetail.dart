import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';
import 'package:valorant/models/weapon.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/widgets/characterAbilitiesWidget.dart';
import 'package:valorant/widgets/characterTeamWidget.dart';
import 'package:valorant/widgets/characterWeaponsWidget.dart';
import 'package:valorant/widgets/characterWidget.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;
  final List<Character> characters;
  final List<Weapon> weapons;

  CharacterDetailScreen({Key key, this.character, this.weapons, this.characters})
      : super(key: key);

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  List<Weapon> favouriteWeapons;
  List<Character> favouriteTeams;


  @override
  void initState() {
    super.initState();
    favouriteWeapons = <Weapon>[];
    favouriteTeams = <Character>[];
    getFavouriteWeapons();
    for(int i = 0;i<widget.character.bestTeamComp.length;i++){
      getFavouriteTeams(i);
    }
  }

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
                              style: AppTheme.heading.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w700),
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
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6, top: 12),
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: Text(
                        "Abilities",
                        style: AppTheme.heading.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    height: 16,
                    color: Colors.white70,
                  ),
                ),
                CharacterAbilitiesWidget(
                  character: widget.character,
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6, top: 12),
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: Text(
                        "Best Teams",
                        style: AppTheme.heading.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    height: 30,
                    color: Colors.white70,
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.2,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: favouriteTeams.length,
                      controller: PageController(viewportFraction: 0.8),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CharacterTeamWidget(
                              team: favouriteTeams,
                              character: widget.character,
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6, top: 12),
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: Text(
                        "Favorite Guns",
                        style: AppTheme.heading.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    height: 30,
                    color: Colors.white70,
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.4,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: favouriteWeapons.length,
                      controller: PageController(viewportFraction: 0.8),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CharacterWeaponsWidget(
                              character: widget.character,
                              weapon: favouriteWeapons[index],
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void getFavouriteWeapons() {
    for (int i = 0; i < widget.weapons.length; i++) {
      for (int a = 0; a < widget.character.bestWeapon.length; a++) {
        if (widget.weapons[i].key.contains(widget.character.bestWeapon[a])) {
          favouriteWeapons.add(widget.weapons[i]);
        }
      }
    }
  }
  void getFavouriteTeams(int index) {
    for (int i = 0; i < widget.characters.length; i++) {
      for (int a = 0; a < widget.character.bestTeamComp.length; a++) {
        if (widget.characters[i].key.contains(widget.character.bestTeamComp[index].names[a])) {
          favouriteTeams.add(widget.characters[i]);
        }
      }
    }
  }
}
