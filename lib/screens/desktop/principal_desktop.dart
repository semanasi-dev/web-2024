import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/desktop/info_desktop.dart';
import 'package:semanaacademica2024/screens/desktop/mater_game.dart';

class PrincipalScreenDesktop extends StatefulWidget {
  const PrincipalScreenDesktop({super.key});

  @override
  State<PrincipalScreenDesktop> createState() => _PrincipalScreenDesktopState();
}

class _PrincipalScreenDesktopState extends State<PrincipalScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.0,
                0.50,
                // 0.70,
                // 0.80,
              ],
              colors: [
                Colors.black,
                Colors.black,
                // Color(0xFF581584),
                // Color(0xFFF72585),
                // Colors.white,
              ],
            ),
          ),
          child: const Column(
            children: [InfoDesktop(), MaterGameDesktop()],
          ),
        ),
      ),
    );
  }
}
