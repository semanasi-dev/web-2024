import 'package:flutter/material.dart';

class GradientTest extends StatelessWidget {
  const GradientTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Example'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white, // Top color - white
                Colors.blue, // Middle color - blue
                Colors.white, // Bottom color - white (effect of disappearance)
              ],
              stops: [
                0.0, // Starting point at the top
                0.5, // Middle point
                1.0, // Ending point at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
