import 'particle.dart';

class ParticleFactory {
  final Map<String, Particle> particles = {};

  Particle getParticle({required String color, required String sprite}) {
    final key = '$color-$sprite';
    return particles.putIfAbsent(
      key,
      () => Particle(color: color, sprite: sprite),
    );
  }
}
