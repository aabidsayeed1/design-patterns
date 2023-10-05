import 'dart:math';

import 'game.dart';
import 'unit.dart';

void main() {
  final game = Game();

  final unit1 = Unit(game: game, position: Point(10, 10), weaponPower: 5);
  final unit2 =
      Unit(game: game, position: Point(5, 10), weaponPower: 3, color: 'green');

  final target = Unit(
    game: game,
    position: Point(20, 20),
    color: 'blue',
    sprite: 'alien',
  );

  unit1.fireAt(target);
  unit2.fireAt(target);

  print('\nMOVING PARTICLES: ${game.movingParticles}\n');

  game.draw('Canvas');
}
