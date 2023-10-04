// Implementation

abstract class Color {
  String fill();
}

// Concrete Implementations

class RedColor implements Color {
  @override
  String fill() => "Red";
}

class BlueColor implements Color {
  @override
  String fill() => "Blue";
}
