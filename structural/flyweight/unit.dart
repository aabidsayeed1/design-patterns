import 'dart:math';

import 'game.dart';

class Unit {
  Unit({
    required this.game,
    required this.position,
    this.weaponPower = 0,
    this.color = 'red',
    this.sprite = 'bullet',
  });

  final Game game;

  final Point<double> position;
  final double weaponPower;
  final String color;
  final String sprite;

  void fireAt(Unit target) {
    game.addParticle(
      position: position,
      vector: target.position - position,
      speed: weaponPower,
      color: color,
      sprite: sprite,
    );

    print('$this FIRED at speed $weaponPower AT $target');
  }

  @override
  String toString() {
    return '$color $sprite at $position';
  }
}
