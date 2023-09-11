import 'package:vector_math/vector_math.dart';

abstract class Actor {
  const Actor();

  String get name;

  String get appearance;

  bool get isVisible;

  Vector2 get position;

  Quaternion get rotation;

  Vector2 get scale;
}
