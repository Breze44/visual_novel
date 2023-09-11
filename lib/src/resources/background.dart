import 'package:visual_novel/src/widgets/vn_image.dart';

class Background {
  const Background({
    required this.name,
    this.appearances = const {},
  });

  final String name;

  final Map<String, VnImage> appearances;
}
