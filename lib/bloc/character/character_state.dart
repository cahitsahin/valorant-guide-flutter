import 'package:valorant/models/character/character/characters.dart';

abstract class CharacterState {
  const CharacterState();
}

class CharacterInitialState extends CharacterState {
  const CharacterInitialState();
}

class CharacterLoadingState extends CharacterState {
  final String message;

  const CharacterLoadingState({
    required this.message,
  });
}

class CharacterSuccessState extends CharacterState {
  final List<Character> characters;

  const CharacterSuccessState({
    required this.characters,
  });
}

class CharacterErrorState extends CharacterState {
  final String error;

  const CharacterErrorState({
    required this.error,
  });
}
