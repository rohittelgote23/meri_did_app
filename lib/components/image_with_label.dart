import 'package:flutter/material.dart';
import 'package:meri_didi_app/theme.dart';

class CircularImageWithLabel extends StatelessWidget {
  final String imagePath;
  final String label;
  final double size;

  const CircularImageWithLabel({
    super.key,
    required this.imagePath,
    required this.label,
    this.size = 70,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade300, width: 3),
          ),
          child: ClipOval(child: Image.asset(imagePath, fit: BoxFit.cover)),
        ),
        SizedBox(height: 5),
        Text(label, style: labelTextStyle.copyWith(fontSize: 12)),
      ],
    );
  }
}
