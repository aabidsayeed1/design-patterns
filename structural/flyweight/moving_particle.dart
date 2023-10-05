// Context - extrinsic state

import 'dart:math';
import 'particle.dart';

class MovingParticle {
  MovingParticle({
    required this.coordinates,
    required this.vector,
    required this.speed,
    required this.particle,
  });

  Point<double> coordinates;
  Point<double> vector;
  double speed;

  Particle particle;

  move() => particle.move(coordinates, vector, speed);

  draw(Object canvas) => particle.draw(coordinates, canvas);
}
