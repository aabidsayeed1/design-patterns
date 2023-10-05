// Flyweight - contains intrinsic state

import 'dart:math';

class Particle {
  final String color;
  final String sprite;

  Particle({required this.color, required this.sprite});

  void move(Point<double> coordinates, Point<double> vector, double speed) {
    print(
      'moving particle from $coordinates to ${coordinates + vector} with speed $speed',
    );
  }

  void draw(Point<double> coordinates, Object canvas) {
    print('drawing particle on canvas at $coordinates');
  }
}
