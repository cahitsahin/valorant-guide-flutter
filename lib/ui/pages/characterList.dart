import 'package:flutter/material.dart';
import 'package:valorant/data/charactersData.dart';
import 'package:valorant/data/weaponsData.dart';
import 'package:valorant/models/character/character/characters.dart';
import 'package:valorant/models/weapon/weapon/weapon.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/ui/widgets/characterWidget.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  PageController _pageController=PageController();
  int currentPage = 0;
  List<Character> allCharacter=[];
  List<Weapon> allWeapons=[];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.9,
      initialPage: currentPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Characters",
          style: AppTheme.subHeading.copyWith(color: Colors.black),
        ),
        foregroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: Future.wait([CharacterData().readJsonObject(),WeaponData().readJsonObject()]),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            allCharacter = snapshot.data![0];
            allWeapons = snapshot.data![1];
            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      children: <Widget>[
                        for (var i = 0; i < allCharacter.length; i++)
                          CharacterWidget(
                              character: allCharacter[i],
                              characters: allCharacter,
                              weapons: allWeapons,
                              pageController: _pageController,
                              currentPage: i),
                      ],
                    ),
                  ),
                ],
              ),
            );
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
