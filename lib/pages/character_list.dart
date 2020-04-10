import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';
import 'package:valorant/services/style.dart';
import 'file:///D:/flutter/valorant/lib/services/drawer.dart';
import 'package:valorant/widgets/character_widget.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  PageController _pageController;
  int currentPage = 0;
  List<Character> allCharacter;

  void getData()async{
    allCharacter = await readJsonObject();
  }

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
    getData();
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Characters",
          style: AppTheme.subHeading.copyWith(color: Colors.black),
        ),
      ),
      body: FutureBuilder(future:readJsonObject(),builder: (context,result){
        if(result.hasData){
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
                        CharacterWidget(character:allCharacter[i],pageController: _pageController,currentPage: i),
                    ],
                  ),
                ),
              ],
            ),
          );
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      })
    );
  }



  Future<List<Character>> readJsonObject() async {

    var comingJson = await DefaultAssetBundle.of(context).loadString("assets/data/characters.json");
    List<Character> jsonList = (json.decode(comingJson) as List).map((f) => Character.fromJson(f)).toList();

    return jsonList;
  }
}



