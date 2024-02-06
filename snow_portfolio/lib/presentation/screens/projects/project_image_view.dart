import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectImageView extends StatelessWidget {
  const ProjectImageView({
    super.key,
    required this.rotationAngle,
    required this.imagePath,
  });

  final double rotationAngle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationAngle,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Get.theme.colorScheme.primary,
            width: 8,
          ),
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
            maxHeight: 450,
            minHeight: 200,
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
