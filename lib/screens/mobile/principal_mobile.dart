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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [InfoMobile(), MaterGameMobile()],
        ),
      ),
    );
  }
}
