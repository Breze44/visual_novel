import 'package:flutter/widgets.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'images/seamless.jpg',
            repeat: ImageRepeat.repeat,
          ),
        ),
      ],
    );
  }
}
