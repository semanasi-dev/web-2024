import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/mobile/footer.dart';
import 'package:semanaacademica2024/screens/mobile/info_mobile.dart';
import 'package:semanaacademica2024/screens/mobile/mater_game.dart';
import 'package:semanaacademica2024/screens/mobile/palestrantes.dart';
import 'package:semanaacademica2024/screens/mobile/patrocinadores.dart';
import 'package:semanaacademica2024/screens/mobile/realizacao.dart';

class PrincipalScreenMobile extends StatefulWidget {
  const PrincipalScreenMobile({super.key});

  @override
  State<PrincipalScreenMobile> createState() => _PrincipalScreenMobileState();
}

class _PrincipalScreenMobileState extends State<PrincipalScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.0,
              0.50,
              0.70,
              0.80,
            ],
            colors: [
              Colors.black,
              Color(0xFF581584),
              Color(0xFFF72585),
              Colors.white,
            ],
          ),
        ),
        child: const Column(
          children: [
            InfoMobile(),
            MaterGameMobile(),
            PalestrantesMobile(),
            PatrocinadoresMobile(),
            RealizacaoMobile(),
            FooterMobile()
          ],
        ),
      ),
    );
  }
}
