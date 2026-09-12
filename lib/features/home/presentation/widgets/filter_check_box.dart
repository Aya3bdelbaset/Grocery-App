import 'package:flutter/material.dart';

class FilterCheckBox extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const FilterCheckBox({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (newValue) {
              onChanged(newValue ?? false);
            },

            activeColor: const Color(0xff53B175),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),

            side: const BorderSide(color: Color(0xffB1B1B1), width: 1.5),
          ),

          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: value ? const Color(0xff53B175) : const Color(0xff181725),
            ),
          ),
        ],
      ),
    );
  }
}