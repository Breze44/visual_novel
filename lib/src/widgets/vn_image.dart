import 'dart:ui';

import 'package:flutter/widgets.dart';

class VnImage extends StatelessWidget {
  const VnImage({
    super.key,
    this.fillColor,
    this.assetName,
    this.repeat,
    this.blurSigma,
    this.overlayColor,
  });

  final Color? fillColor;
  final String? assetName;
  final ImageRepeat? repeat;
  final double? blurSigma;
  final Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(),
      child: _buildChild(),
    );
  }

  BoxDecoration? _buildDecoration() {
    if (assetName == null && fillColor == null) {
      return null;
    }

    final decorationImage = assetName == null
        ? null
        : DecorationImage(
            image: AssetImage(assetName!),
            repeat: repeat ?? ImageRepeat.noRepeat,
          );

    return BoxDecoration(
      color: fillColor,
      image: decorationImage,
    );
  }

  Widget? _buildChild() {
    Widget? effectiveChild = overlayColor == null //
        ? null
        : Container(
            decoration: BoxDecoration(
              color: overlayColor,
            ),
          );

    if (blurSigma != null) {
      effectiveChild = BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurSigma!, sigmaY: blurSigma!),
        child: effectiveChild ?? Container(),
      );
    }

    return effectiveChild;
  }
}
