import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/bloc/character/character_bloc.dart';
import 'package:valorant/bloc/character/character_event.dart';
import 'package:valorant/bloc/character/character_state.dart';
import 'package:valorant/data/repository.dart';
import 'package:valorant/models/character/character/characters.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/ui/widgets/characterWidget.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  PageController _pageController = PageController();
  int currentPage = 0;
  List<Character> _characters = [];

  _loadCharacter() async {
    BlocProvider.of<CharacterBloc>(context).add(const CharacterFetchEvent());
  }

  @override
  void initState() {
    super.initState();
    _loadCharacter();

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
      body: BlocConsumer<CharacterBloc, CharacterState>(
        listener: (context, state) {
          if (state is CharacterLoadingState) {
          } else if (state is CharacterSuccessState &&
              state.characters.isEmpty) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('No more Characters')));
          } else if (state is CharacterErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
            BlocProvider.of<CharacterBloc>(context).isFetching = false;
          }
          return;
        },
        builder: (context, state) {
          if (state is CharacterInitialState ||
              state is CharacterLoadingState && _characters.isEmpty) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CharacterSuccessState) {
            _characters.addAll(state.characters);
            BlocProvider.of<CharacterBloc>(context).isFetching = false;
          } else if (state is CharacterErrorState && _characters.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CharacterBloc>(context)
                      ..isFetching = true
                      ..add(CharacterFetchEvent());
                  },
                  icon: Icon(Icons.refresh),
                ),
                const SizedBox(height: 15),
                Text(state.error, textAlign: TextAlign.center),
              ],
            );
          }
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: <Widget>[
                      for (var i = 0; i < _characters.length; i++)
                        CharacterWidget(
                            character: _characters[i],
                            characters: _characters,
                            pageController: _pageController,
                            currentPage: i),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
