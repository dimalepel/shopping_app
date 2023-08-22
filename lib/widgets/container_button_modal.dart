import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ContainerButtonModal extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String iText;

  const ContainerButtonModal({super.key, this.bgColor, this.containerWidth, required this.iText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor
      ),
      child: Center(
        child: Text(
          iText,
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
