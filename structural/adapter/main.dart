import 'adapter.dart';
import 'compatible_classes.dart';
import 'incompatible_class.dart';

void main() {
  final roundHole = RoundHole(5);
  final roundPeg = RoundPeg(5);
  print('Round peg fits in round hole: ${roundHole.fits(roundPeg)}');

  final smallSquarePeg = SquarePeg(5);
  final largeSquarePeg = SquarePeg(10);

  // This gives error, as SquarePeg isn't compatible
  //roundHole.fits(smallSquarePeg);

  // Using adapter
  final smallSquarePegAdapter = SquarePegAdapter(smallSquarePeg);
  final largeSquarePegAdapter = SquarePegAdapter(largeSquarePeg);

  print(
      'Small square peg fits in round hole (with adapter): ${roundHole.fits(smallSquarePegAdapter)}');
  print(
      'Large square peg fits in round hole (with adapter): ${roundHole.fits(largeSquarePegAdapter)}');
}
