import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/bloc/weapon/weapon_event.dart';
import 'package:valorant/bloc/weapon/weapon_state.dart';
import 'package:valorant/data/repository.dart';
import 'package:valorant/models/weapon/weapon/weapon.dart';

class WeaponBloc extends Bloc<WeaponEvent, WeaponState> {
  final Repository repo;
  bool isFetching = false;

  WeaponBloc(this.repo) : super(WeaponInitialState()) {
    on<WeaponFetchEvent>((event, emit) async => await _getWeapons(emit));
  }

  Future<void> _getWeapons(Emitter<WeaponState> emit) async {
    emit(WeaponLoadingState(message: 'Loading Weapons'));
    final response = await repo.readJsonWeapon();
    final weapons =
        (jsonDecode(response) as List).map((e) => Weapon.fromJson(e)).toList();
    if (weapons is List<Weapon>) {
      emit(WeaponSuccessState(weapons: weapons));
    } else {
      emit(WeaponErrorState(error: response));
    }
  }
}
