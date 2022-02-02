import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/data/repository.dart';
import 'bloc/character/character_bloc.dart';
import 'ui/pages/characterList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    return MaterialApp(
      title: 'Valorant Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 2,
        ),
      ),
      home: BlocProvider(
        create: (context) => CharacterBloc(repo),
        child: CharacterList(),
      ),
    );
  }
}
