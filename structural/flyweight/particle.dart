// Flyweight - contains intrinsic state

import 'dart:math';

class Particle {
  final String color;
  final String sprite;

  Particle({required this.color, required this.sprite});

  void move(Point<double> position, Point<double> vector, double speed) {
    print(
      'moving particle from $position to ${position + vector} with speed $speed',
    );
  }

  void draw(Point<double> position, Object canvas) {
    print('drawing particle on canvas at $position');
  }
}
