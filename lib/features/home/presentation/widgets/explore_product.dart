import 'package:flutter/material.dart';

class ExploreProduct extends StatelessWidget {
  final String image;
  final String name;
  final Color color;
  final Color borderColor;
  final VoidCallback? onTap;

  const ExploreProduct({
    super.key,
    required this.image,
    required this.name,
    required this.color,
    required this.borderColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 189.11,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),

            SizedBox(
              width: 110,
              height: 80,
              child: Image.asset(image, fit: BoxFit.contain),
            ),

            const SizedBox(height: 12),

            Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff181725),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}