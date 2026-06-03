import 'package:flutter/material.dart';
import 'color_circle.dart';
import 'color_value_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Mixer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ColorMixerScreen(),
    );
  }
}

class ColorMixerScreen extends StatefulWidget {
  const ColorMixerScreen({super.key});

  @override
  State<ColorMixerScreen> createState() => _ColorMixerScreenState();
}

class _ColorMixerScreenState extends State<ColorMixerScreen> {
  double _red = 128;
  double _green = 64;
  double _blue = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RGB Color Mixer'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Big color circle
            ColorCircle(
              red: _red,
              green: _green,
              blue: _blue,
            ),

            const SizedBox(height: 40),

            // RGB label
            Text(
              'RGB(${_red.toInt()}, ${_green.toInt()}, ${_blue.toInt()})',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(height: 24),

            // Red slider
            ColorValueChanger(
              colorName: 'Red',
              value: _red,
              activeColor: Colors.red,
              onChanged: (val) {
                setState(() {
                  _red = val;
                });
              },
            ),

            // Green slider
            ColorValueChanger(
              colorName: 'Green',
              value: _green,
              activeColor: Colors.green,
              onChanged: (val) {
                setState(() {
                  _green = val;
                });
              },
            ),

            // Blue slider
            ColorValueChanger(
              colorName: 'Blue',
              value: _blue,
              activeColor: Colors.blue,
              onChanged: (val) {
                setState(() {
                  _blue = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}