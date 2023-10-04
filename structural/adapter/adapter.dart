import 'dart:math';

import 'compatible_classes.dart';
import 'incompatible_class.dart';

class SquarePegAdapter extends RoundPeg {
  final SquarePeg squarePeg;

  SquarePegAdapter(this.squarePeg) : super(squarePeg.getWidth() * sqrt(2) / 2);
}
