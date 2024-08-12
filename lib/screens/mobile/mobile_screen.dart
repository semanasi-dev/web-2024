import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/mobile/info_mobile.dart';
import 'package:semanaacademica2024/screens/mobile/mater_game_mobile.dart';
import 'package:semanaacademica2024/screens/mobile/palestrantes_mobile.dart';
import 'package:semanaacademica2024/screens/mobile/realizacao_mobile.dart';

class PrincipalMobile extends StatefulWidget {
  const PrincipalMobile({super.key});

  @override
  State<PrincipalMobile> createState() => _PrincipalMobileState();
}

class _PrincipalMobileState extends State<PrincipalMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            const Color(0xFF581584),
            Color.fromARGB(255, 255, 255, 255)
          ],
          stops: [0.25, 0.50, 0.60],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InfoMobile(),
            MaterGameMobile(
              screenSize: screenSize,
            ),
            PalestrantesMobile(),
            RealizacaoMobile(),
          ],
        ),
      ),
    );
  }
}
