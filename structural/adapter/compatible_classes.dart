class RoundHole {
  final double radius;

  RoundHole(this.radius);

  bool fits(RoundPeg peg) {
    return radius >= peg.getRadius();
  }
}

class RoundPeg {
  final double radius;

  RoundPeg(this.radius);

  double getRadius() {
    return radius;
  }
}
