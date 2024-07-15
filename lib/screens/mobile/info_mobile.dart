import 'package:flutter/material.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/foguete_animado.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class InfoMobile extends StatefulWidget {
  const InfoMobile({super.key});

  @override
  State<InfoMobile> createState() => _InfoMobileState();
}

class _InfoMobileState extends State<InfoMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
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
                      stops: [0.80, 1.0],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned.fill(
                            right: screenSize.height * 0.3,
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: FogueteAnimado(),
                            ),
                          ),
                          Positioned.fill(
                            bottom: screenSize.height * 0.1,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                './lib/assets/Estrelas.png',
                                height: screenSize.height * 0.45,
                                width: screenSize.width * 0.25,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextoComBorda(
                                text: 'SEMANA',
                                fontFamily: 'Cristik',
                                fontSize: screenSize.width * 0.13,
                                textColor: Colors.white,
                                borderColor: const Color(0xFF935CAB),
                              ),
                              TextoComBorda(
                                text: 'ACADEMICA',
                                fontFamily: 'Cristik',
                                fontSize: screenSize.width * 0.13,
                                textColor: Colors.white,
                                borderColor: const Color(0xFF935CAB),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SelectableText(
                      'Bem vindo á semana acadêmica 2024!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width * 0.044,
                          fontFamily: 'Jura',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    SelectableText(
                      'Já pensou em estar na vanguarda das próximas grandes inovações tecnolómagicas?\nPrepare-se para uma semana que vai despertar sua curiosidade e expandir seus horizontes com:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width * 0.050,
                          fontFamily: 'Jura',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: screenSize.height * 0.010,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            SelectableText(
                              'Palestras de quem domina o assunto',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenSize.width * 0.04,
                                fontFamily: 'Jura',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: screenSize.height * 0.010,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            SelectableText(
                              'Troca de ideias',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenSize.width * 0.04,
                                fontFamily: 'Jura',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: screenSize.height * 0.010,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            SelectableText(
                              'Networking',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenSize.width * 0.04,
                                fontFamily: 'Jura',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: screenSize.height * 0.010,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            SelectableText(
                              'Diversao e jogos',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenSize.width * 0.04,
                                fontFamily: 'Jura',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: screenSize.height * 0.010,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            SelectableText(
                              'Sorteios e brindes',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenSize.width * 0.04,
                                fontFamily: 'Jura',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        HoverButton(
                          texto: 'Quero participar',
                          cores: const [
                            Color(0xFF535AFF),
                            Color(0xFF8C39F7),
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
                            Color(0xFF4361EE),
                            Color(0xFF4361EE),
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
                    SizedBox(
                      height: screenSize.height * 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
