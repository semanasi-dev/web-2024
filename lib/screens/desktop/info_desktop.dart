import 'package:flutter/material.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/foguete_animado.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';
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

    return Wrap(alignment: WrapAlignment.center, children: [
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
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                    stops: [0.85, 1.0],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: screenSize.width * 0.07,
                top: screenSize.width * 0.02,
                bottom: screenSize.width * 0.07,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  colunaEsquerda(screenSize),
                  colunaDaDireita(screenSize),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  colunaEsquerda(Size screenSize) {
    return Column(
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
              text: 'ACADÊMICA',
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
        SizedBox(
          height: screenSize.height * 0.04,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Bem vindo á semana acadêmica 2024!',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width * 0.026,
                fontFamily: 'Jura',
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            SelectableText(
              'Já pensou em estar na vanguarda das próximas grandes\ninovações tecnolómagicas? Prepare-se para uma semana que vai\ndespertar sua curiosidade e expandir seus horizontes com:',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width * 0.016,
                fontFamily: 'Jura',
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: screenSize.height * 0.016,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.005,
                    ),
                    SelectableText(
                      'Palestras de quem domina o assunto',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        fontFamily: 'Jura',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: screenSize.height * 0.016,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.005,
                    ),
                    SelectableText(
                      'Troca de ideias',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        fontFamily: 'Jura',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: screenSize.height * 0.016,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.005,
                    ),
                    SelectableText(
                      'Networking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        fontFamily: 'Jura',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: screenSize.height * 0.016,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.005,
                    ),
                    SelectableText(
                      'Diversao e jogos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        fontFamily: 'Jura',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: screenSize.height * 0.016,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.005,
                    ),
                    SelectableText(
                      'Sorteios e brindes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        fontFamily: 'Jura',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.only(left: screenSize.height * 0.02),
                  child: Column(
                    children: [
                      HoverButton(
                        texto: 'Quero participar',
                        cores: const [
                          Color(0xFF4CC9F0),
                          Color(0xFF5458FE),
                          Color(0xFF853BF7),
                        ],
                        bold: true,
                        fonte: 'Jura',
                        onPressed: () {
                          Utils.launchURL(
                              'https://materdei.jacad.com.br/academico/eventos/programacao-do-evento/45');
                        },
                      ),
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      HoverButton(
                        texto: 'Ver mais',
                        cores: const [
                          Color(0xFF4CC9F0),
                          Color(0xFF4CC9F0),
                        ],
                        bold: true,
                        fonte: 'Jura',
                        onPressed: () {
                          Utils.launchURL(
                              'https://materdei.jacad.com.br/academico/eventos/programacao-do-evento/45');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  colunaDaDireita(Size screenSize) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            './lib/assets/Estrelas.png',
            height: screenSize.height * 0.35,
            width: screenSize.width * 0.17,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenSize.height * 0.25),
          child: const FogueteAnimado(),
        ),
      ],
    );
  }
}
