import 'package:valorant/models/weapon/weapon/weapon.dart';

abstract class WeaponState {
  const WeaponState();
}

class WeaponInitialState extends WeaponState {
  const WeaponInitialState();
}

class WeaponLoadingState extends WeaponState {
  final String message;

  const WeaponLoadingState({
    required this.message,
  });
}

class WeaponSuccessState extends WeaponState {
  final List<Weapon> weapons;

  const WeaponSuccessState({
    required this.weapons,
  });
}

class WeaponErrorState extends WeaponState {
  final String error;

  const WeaponErrorState({
    required this.error,
  });
}
