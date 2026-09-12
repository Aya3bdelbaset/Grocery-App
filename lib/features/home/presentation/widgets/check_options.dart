import 'package:flutter/material.dart';

class CheakoutOptions extends StatelessWidget {
  final String subTille;
  final String title;

  const CheakoutOptions({
    super.key,
    required this.subTille,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),
              ),

              const Spacer(),
              Text(
                subTille,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
              const Icon(
                Icons.chevron_right,
                size: 22,
                color: Color(0xff181725),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}