import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/bloc/character/character_event.dart';
import 'package:valorant/data/repository.dart';
import 'package:valorant/models/character/character/characters.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final Repository repo;
  bool isFetching = false;

  CharacterBloc(this.repo) : super(CharacterInitialState()) {
    on<CharacterFetchEvent>((event, emit) async => await _getCharacters(emit));
  }

  Future<void> _getCharacters(Emitter<CharacterState> emit) async {
    emit(CharacterLoadingState(message: 'Loading Characters'));
    final response = await repo.readJsonCharacter();
    final characters = (jsonDecode(response) as List)
        .map((e) => Character.fromJson(e))
        .toList();
    if (characters is List<Character>) {
      emit(CharacterSuccessState(characters: characters));
    } else {
      emit(CharacterErrorState(error: response));
    }
  }
}
