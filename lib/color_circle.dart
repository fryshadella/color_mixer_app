import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final double red;
  final double green;
  final double blue;

  const ColorCircle({
    super.key,
    required this.red,
    required this.green,
    required this.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 220,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(
          red.toInt(),
          green.toInt(),
          blue.toInt(),
          1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
    );
  }
}