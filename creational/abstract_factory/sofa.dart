part of 'main.dart';

abstract class Sofa {
  void relaxOn();
}

class ModernSofa implements Sofa {
  @override
  void relaxOn() {
    print('Relaxing on a modern sofa');
  }
}

class VictorianSofa implements Sofa {
  @override
  void relaxOn() {
    print('Relaxing on a victorian sofa');
  }
}

class ArtDecoSofa implements Sofa {
  @override
  void relaxOn() {
    print('Relaxing on an art deco sofa');
  }
}
