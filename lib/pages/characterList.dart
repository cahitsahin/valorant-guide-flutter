import 'package:flutter/material.dart';
import 'package:valorant/data/charactersData.dart';
import 'package:valorant/models/characters.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/widgets/characterWidget.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  PageController _pageController;
  int currentPage = 0;
  List<Character> allCharacter;

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
      ),
      body: FutureBuilder(
        future: CharacterData().readJsonObject(),
        builder: (context, result) {
          if (result.hasData) {
            allCharacter = result.data;
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
