part of 'furniture.dart';

abstract class Chair {
  void sitOn();
}

class ModernChair implements Chair {
  @override
  void sitOn() {
    print('Sitting on a modern chair');
  }
}

class VictorianChair implements Chair {
  @override
  void sitOn() {
    print('Sitting on a victorian chair');
  }
}

class ArtDecoChair implements Chair {
  @override
  void sitOn() {
    print('Sitting on an art deco chair');
  }
}
