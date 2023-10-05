// Flyweight - contains intrinsic state

import 'dart:math';

class Particle {
  final String color;
  final String sprite;

  Particle({this.color = 'red', this.sprite = 'bullet'});

  void move(Point<double> position, Point<double> vector, double speed) {
    print(
      'moving particle from $position to ${position + vector} with speed $speed',
    );
  }

  void draw(Point<double> position, Object canvas) {
    print('drawing $this on canvas at $position');
  }

  String toString() => '$color $sprite';
}
