// Container

import 'dart:math';

import 'moving_particle.dart';
import 'particle.dart';
import 'particle_factory.dart';

class Game {
  final List<Particle> particles = [];
  final List<MovingParticle> movingParticles = [];

  void addParticle({
    required Point<double> position,
    required Point<double> vector,
    required double speed,
    required String color,
    required String sprite,
  }) {
    final particle = ParticleFactory().getParticle(
      color: color,
      sprite: sprite,
    );
    particles.add(particle);

    final movingParticle = MovingParticle(
      particle: particle,
      position: position,
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
