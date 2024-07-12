import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/desktop/footer.dart';
import 'package:semanaacademica2024/screens/desktop/info_desktop.dart';
import 'package:semanaacademica2024/screens/desktop/mater_game.dart';
import 'package:semanaacademica2024/screens/desktop/palestrantes.dart';
import 'package:semanaacademica2024/screens/desktop/realizacao.dart';

import 'patrocinadores.dart';

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
                0.80,
                1,
              ],
              colors: [
                Colors.black,
                Color(0xFF581584),
                Colors.white,
              ],
            ),
          ),
          child: const Column(
            children: [
              InfoDesktop(),
              MaterGameDesktop(),
              PalestrantesDesktop(),
              PatrocinadoresDesktop(),
              RealizacaoDesktop(),
              FooterDesktop(),
            ],
          ),
        ),
      ),
    );
  }
}
