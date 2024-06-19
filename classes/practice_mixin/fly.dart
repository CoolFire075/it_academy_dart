import 'bee.dart';
import 'bird.dart';
import 'plane.dart';

mixin Fly {
  void fly(Object object) {
    int flyHigh = switch (object) {
      Plane() => 10000,
      Bee() => 500,
      Bird() => 2000,
      _ => 0,
    };
    print('$object flies on high $flyHigh meters');
  }
}
