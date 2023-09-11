import 'package:visual_novel/src/widgets/vn_image.dart';

class Character {
  Character({
    required this.name,
    this.appearances = const {},
  });

  final String name;

  final Map<String, VnImage> appearances;
}
