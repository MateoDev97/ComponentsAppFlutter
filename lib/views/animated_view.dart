import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedView extends StatefulWidget {
  const AnimatedView({super.key});

  @override
  State<AnimatedView> createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<AnimatedView> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    final random = Random();
    _width = random.nextInt(350).toDouble() + 50;
    _height = random.nextInt(350).toDouble() + 50;

    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 20);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Widget')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => changeShape(),
          child: const Icon(
            Icons.play_circle_outline,
            size: 35,
          )),
    );
  }
}
