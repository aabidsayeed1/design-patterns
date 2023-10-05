// Context - extrinsic state

import 'dart:math';
import 'particle.dart';

class MovingParticle {
  MovingParticle({
    required this.position,
    required this.vector,
    required this.speed,
    required this.particle,
  });

  Point<double> position;
  Point<double> vector;
  double speed;

  Particle particle;

  move() => particle.move(position, vector, speed);

  draw(Object canvas) => particle.draw(position, canvas);
}
