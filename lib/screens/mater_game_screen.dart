import 'package:flutter/material.dart';
import 'package:semanaacademica2024/utils/Utils.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';

class QrCodeContainer extends StatefulWidget {
  const QrCodeContainer({super.key});

  @override
  State<QrCodeContainer> createState() => QrCodeContainerState();
}

class QrCodeContainerState extends State<QrCodeContainer> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    final List<String> detalhes = [
      'Locais',
      'Horário de inicio',
    ];

    return !Utils.isMobile(context)
        ? desktopScreen(screenSize, detalhes)
        : mobileScreen(screenSize, detalhes);
  }

  mobileScreen(Size screenSize, List<String> detalhes) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            './lib/assets/competicao.png',
            height: screenSize.height * 0.2,
            width: screenSize.width * 0.8,
          ),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      './lib/assets/Componentes-Banner-MaterCode.png',
                      fit: BoxFit.contain,
                      opacity: const AlwaysStoppedAnimation(0.2),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Durante a semana, vai rolar uma competição para ver quem encontra mais MaterCodes espalhados pelo ambiente do evento. Os ganhadores vão receber seus prêmios ao final da semana.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jura',
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.035,
                      ),
                      Text(
                        'Se encontrar um, não perca sua chance: pegue seu telefone e se garanta no placar!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jura',
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.040,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Detalhes:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Jura',
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.020,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: screenSize.width * 0.020,
                              ),
                              Text(
                                'Locais',
                                style: TextStyle(
                                    fontSize: screenSize.width * 0.035,
                                    color: Colors.black,
                                    fontFamily: 'Jura',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: screenSize.width * 0.020,
                              ),
                              Text(
                                'Horário de inicio',
                                style: TextStyle(
                                    fontSize: screenSize.width * 0.035,
                                    color: Colors.black,
                                    fontFamily: 'Jura',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.040,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.65,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            HoverButton(
                              texto: 'Ler MaterCode',
                              cores: const [
                                Color(0xFF4CC9F0),
                                Color(0xFF5458FE),
                                Color(0xFFA380F9),
                              ],
                              bold: true,
                              fonte: 'Jura',
                              shadowColor: const Color(0xFF4CC9F0),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Expanded(
                                child: Image.asset(
                                  './lib/assets/Celular_small.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  desktopScreen(Size screenSize, List<String> detalhes) {
    return Container(
      width: double.infinity,
      height: screenSize.height * 1.05,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 50, bottom: 50),
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              direction:
                  constraints.maxWidth > 800 ? Axis.horizontal : Axis.vertical,
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Image.asset(
                      './lib/assets/Componentes-Banner-MaterCode.png',
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('./lib/assets/competicao.png',
                          height: screenSize.height * 0.15,
                          width: double.infinity),
                      const SizedBox(height: 20),
                      Text(
                        'Durante a semana, vai rolar uma competição\npara ver quem encontra mais MaterCodes\nespalhados pelo ambiente do evento. Os\nganhadores vão receber seus prêmios ao final\nda semana.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: constraints.maxWidth * 0.015,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jura',
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Se encontrar um, não perca sua chance:\npegue seu telefone e se garanta no placar!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: constraints.maxWidth * 0.011,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jura',
                        ),
                      ),
                      const SizedBox(height: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Detalhes:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.015,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Jura',
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.020,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: screenSize.width * 0.020,
                              ),
                              Text(
                                'Locais',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    color: Colors.black,
                                    fontFamily: 'Jura',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: screenSize.width * 0.020,
                              ),
                              Text(
                                'Horário de inicio',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    color: Colors.black,
                                    fontFamily: 'Jura',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Center(
                        child: SizedBox(
                          width: screenSize.width * 0.18,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              HoverButton(
                                cores: const [
                                  Color(0xFF4CC9F0),
                                  Color(0xFF5458FE),
                                  Color(0xFF853BF7),
                                ],
                                texto: 'Ler MaterCode',
                                bold: true,
                                fonte: 'Jura',
                                shadowColor: const Color(0xFF4CC9F0),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Expanded(
                                  child: Image.asset(
                                    './lib/assets/Celular_small.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
