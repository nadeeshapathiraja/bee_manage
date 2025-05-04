import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return SkeletonAvatar(
          style: SkeletonAvatarStyle(
            width: width,
            height: height,
          ),
        );
      },
    );
  }
}

class CircularNetworkImage extends StatelessWidget {
  const CircularNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45),
      child: Image.network(
        url,
        fit: fit,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return SkeletonAvatar(
            style: SkeletonAvatarStyle(
              width: width,
              height: height,
            ),
          );
        },
      ),
    );
  }
}
