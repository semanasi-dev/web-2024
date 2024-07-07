import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/mobile/info_mobile.dart';
import 'package:semanaacademica2024/screens/mobile/mater_game.dart';

class PrincipalScreenMobile extends StatefulWidget {
  const PrincipalScreenMobile({super.key});

  @override
  State<PrincipalScreenMobile> createState() => _PrincipalScreenMobileState();
}

class _PrincipalScreenMobileState extends State<PrincipalScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  colors: [Colors.black, Colors.pink])),
          child: const Column(
            children: [InfoMobile(), MaterGameMobile()],
          ),
        ),
      ),
    );
  }
}
