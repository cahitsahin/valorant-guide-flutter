import 'package:valorant/models/map/map.dart';

abstract class MapState {
  const MapState();
}

class MapInitialState extends MapState {
  const MapInitialState();
}

class MapLoadingState extends MapState {
  final String message;

  const MapLoadingState({
    required this.message,
  });
}

class MapSuccessState extends MapState {
  final List<Maps> maps;

  const MapSuccessState({
    required this.maps,
  });
}

class MapErrorState extends MapState {
  final String error;

  const MapErrorState({
    required this.error,
  });
}
