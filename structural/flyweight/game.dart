// Container

import 'dart:math';

import 'moving_particle.dart';
import 'particle.dart';
import 'particle_factory.dart';

class Game {
  final List<Particle> particles = [];
  final List<MovingParticle> movingParticles = [];

  void addParticle(
    Point<double> coordinates,
    Point<double> vector,
    double speed,
    String color,
    String sprite,
  ) {
    final particle = ParticleFactory().getParticle(
      color: color,
      sprite: sprite,
    );
    particles.add(particle);

    final movingParticle = MovingParticle(
      particle: particle,
      coordinates: coordinates,
      vector: vector,
      speed: speed,
    );
    movingParticles.add(movingParticle);
  }

  void draw(Object canvas) {
    for (final movingParticle in movingParticles) {
      movingParticle.draw(canvas);
    }
  }
}
