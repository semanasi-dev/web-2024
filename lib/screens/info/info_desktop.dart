import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/foguete_animado.dart';
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                colunaEsquerda(screenSize),
                colunaDaDireita(screenSize),
              ],
            ),
          ],
        ),
      ),
    ]);
  }

  colunaEsquerda(Size screenSize) {
    return Container(
      padding: EdgeInsets.only(top: screenSize.height * 0.05),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextoComBorda(
                text: 'SEMANA',
                fontFamily: 'Cristik',
                fontSize: screenSize.width * 0.053,
                textColor: Colors.white,
                borderColor: const Color(0xFF935CAB),
              ),
              TextoComBorda(
                text: 'ACADEMICA',
                fontFamily: 'Cristik',
                fontSize: screenSize.width * 0.053,
                textColor: Colors.white,
                borderColor: const Color(0xFF935CAB),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextoComBorda(
                    text: 'O QUE NUNCA TE CONTARAM',
                    fontSize: screenSize.width * 0.0115,
                    textColor: Colors.white,
                    borderColor: const Color(0xFF935CAB),
                  ),
                  TextoComBorda(
                    text: 'SOBRE A SUA CARREIRA',
                    fontSize: screenSize.width * 0.0115,
                    textColor: Colors.white,
                    borderColor: const Color(0xFF935CAB),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
          )
        ],
      ),
    );
  }

  colunaDaDireita(Size screenSize) {
    return SizedBox(
      width: screenSize.width * 0.45,
      child: Stack(
        children: [
          Positioned(
            left: screenSize.width * 0.30,
            child: Image.asset(
              './lib/assets/Estrelas.png',
              height: screenSize.height * 0.25,
              width: screenSize.width * 0.15,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: screenSize.height * 0.08),
            child: FogueteAnimado(
              mult: 0.65,
              isSmallScreen: Utils.isMobile(context),
            ),
          ),
        ],
      ),
    );
  }
}
