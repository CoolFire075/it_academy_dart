import 'bee.dart';
import 'bird.dart';
import 'plane.dart';

void main() {
  Plane plane = Plane();
  plane.fly(plane);
  Bee bee = Bee();
  bee.fly(bee);
  Bird bird = Bird();
  bird.fly(bird);
}
