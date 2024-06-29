import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class InfoDesktop extends StatefulWidget {
  const InfoDesktop({super.key});

  @override
  State<InfoDesktop> createState() => _InfoDesktopState();
}

class _InfoDesktopState extends State<InfoDesktop> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(children: [
      SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'lib/assets/background_top.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  children: [
                    colunaEsquerda(screenSize),
                  ],
                )),
          ],
        ),
      ),
    ]);
  }

  colunaEsquerda(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextoComBorda(
          text: 'SEMANA',
          fontFamily: 'Cristik',
          fontSize: screenSize.width * 0.050,
          textColor: Colors.white,
          borderColor: const Color(0xFF935CAB),
        ),
        TextoComBorda(
          text: 'ACADEMICA',
          fontFamily: 'Cristik',
          fontSize: screenSize.width * 0.050,
          textColor: Colors.white,
          borderColor: const Color(0xFF935CAB),
        ),
        TextoComBorda(
          text: 'O QUE NUNCA TE CONTARAM',
          fontSize: screenSize.width * 0.015,
          textColor: Colors.white,
          borderColor: const Color(0xFF935CAB),
        ),
        TextoComBorda(
          text: 'SOBRE A SUA CARREIRA',
          fontSize: screenSize.width * 0.015,
          textColor: Colors.white,
          borderColor: const Color(0xFF935CAB),
        ),
        SelectableText(
          'Bem vindo á semana acadêmica 2024!',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.width * 0.02,
            fontFamily: 'Jura',
          ),
        ),
        SelectableText(
          'Já pensou em estar na vanguarda das próximas grandes\ninovações tecnolómagicas? Prepare-se para uma semana que vai\ndespertar sua curiosidade e expandir seus horizontes com:',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.width * 0.015,
            fontFamily: 'Jura',
          ),
        ),
      ],
    );
  }

  // colunaDaDireita(Size screenSize) {
  //   return Column(
  //     children: [
  //       FogueteAnimado(mult: mult, isSmallScreen: isSmallScreen)
  //     ],
  //   );
  // }
}
