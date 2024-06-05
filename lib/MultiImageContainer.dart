import 'package:flutter/material.dart';

enum ShapeType { circle, rectangle, custom }

class MultiImageContainer extends StatelessWidget {
  final List<String> imageUrls;
  final ShapeType shapeType;
  final CustomClipper<Path>? customClipper;
  final double width;
  final double height;
  final BoxFit fit;

  const MultiImageContainer({
    Key? key,
    required this.imageUrls,
    this.shapeType = ShapeType.rectangle,
    this.customClipper,
    this.width = 100.0,
    this.height = 100.0,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: imageUrls.map((url) {
        return _buildImageContainer(url);
      }).toList(),
    );
  }

  Widget _buildImageContainer(String url) {
    return ClipPath(
      clipper: shapeType == ShapeType.custom ? customClipper : null,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: shapeType == ShapeType.circle ? BoxShape.circle : BoxShape.rectangle,
        ),
        child: Image.network(
          url,
          fit: fit,
        ),
      ),
    );
  }
}
