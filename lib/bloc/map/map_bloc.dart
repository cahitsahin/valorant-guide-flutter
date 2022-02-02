import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/bloc/map/map_event.dart';
import 'package:valorant/bloc/map/map_state.dart';
import 'package:valorant/data/repository.dart';
import 'package:valorant/models/map/map.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final Repository repo;
  bool isFetching = false;

  MapBloc(this.repo) : super(MapInitialState()) {
    on<MapFetchEvent>((event, emit) async => await _getMaps(emit));
  }

  Future<void> _getMaps(Emitter<MapState> emit) async {
    emit(MapLoadingState(message: 'Loading Characters'));
    final response = await repo.readJsonMap();
    final maps =
        (jsonDecode(response) as List).map((e) => Maps.fromJson(e)).toList();
    if (maps is List<Maps>) {
      emit(MapSuccessState(maps: maps));
    } else {
      emit(MapErrorState(error: response));
    }
  }
}
