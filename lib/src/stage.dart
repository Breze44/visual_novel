import 'package:flutter/widgets.dart';
import 'package:visual_novel/src/widgets/vn_image.dart';

class Stage extends StatelessWidget {
  const Stage({
    super.key,
    this.backgroundImages = const [],
    this.sceneFit,
    this.scene,
  });

  final List<VnImage> backgroundImages;
  final BoxFit? sceneFit;
  final Widget? scene;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        for (final backgroundImage in backgroundImages)
          Positioned.fill(
            child: backgroundImage,
          ),
        Positioned.fill(
          child: FittedBox(
            fit: sceneFit ?? BoxFit.contain,
            child: scene,
          ),
        )
      ],
    );
  }
}
