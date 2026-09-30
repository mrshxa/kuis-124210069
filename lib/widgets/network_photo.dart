import 'package:flutter/material.dart';

/// Gambar dari internet dengan loading indicator dan fallback jika error.
class NetworkPhoto extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final BoxFit fit;

  const NetworkPhoto({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: height,
      width: width,
      fit: fit,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return SizedBox(
          height: height,
          width: width,
          child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: height,
          width: width,
          color: Colors.grey.shade200,
          child: const Icon(Icons.broken_image, color: Colors.grey, size: 40),
        );
      },
    );
  }
}
