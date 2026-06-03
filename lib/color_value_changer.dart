import 'package:flutter/material.dart';

class ColorValueChanger extends StatelessWidget {
  final String colorName;
  final double value;
  final Color activeColor;
  final ValueChanged<double> onChanged;

  const ColorValueChanger({
    super.key,
    required this.colorName,
    required this.value,
    required this.activeColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                colorName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: activeColor,
                ),
              ),
              Text(
                value.toInt().toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: activeColor,
              thumbColor: activeColor,
              inactiveTrackColor: activeColor.withOpacity(0.3),
            ),
            child: Slider(
              min: 0,
              max: 255,
              value: value,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}