import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';

class MaterGameDesktop extends StatefulWidget {
  const MaterGameDesktop({super.key});

  @override
  State<MaterGameDesktop> createState() => _MaterGameDesktopState();
}

class _MaterGameDesktopState extends State<MaterGameDesktop> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: screenSize.width * 0.02,
          ),
          color: Colors.black,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Color(0xFF581584)],
                      stops: [0.60, 1.0],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: screenSize.width * 0.07,
                  right: screenSize.width * 0.07,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Wrap(
                          children: [
                            Image.asset(
                              './lib/assets/competicao.png',
                              width: screenSize.width * 0.50,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableText(
                              'Durante a semana, vai rolar uma competição para ver quem encontra\nmais MaterCodes espalhados pelo ambiente do evento.\nOs ganhadores vão receber seus prêmios ao final da semana.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.015,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Jura',
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height * 0.035,
                            ),
                            SelectableText(
                              'Se encontrar um, não perca sua chance:\npegue seu telefone e se garanta no placar!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.02,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Jura',
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height * 0.035,
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
                                  'Horário de início',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenSize.width * 0.02,
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
                                  'Quando',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenSize.width * 0.02,
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
                                  'Locais',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenSize.width * 0.02,
                                    fontFamily: 'Jura',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height * 0.035,
                        ),
                        HoverButton(
                            cores: const [Colors.black, Colors.black],
                            texto: 'Ler MaterCode',
                            onPressed: () {},
                            fonte: 'Jura'),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                      ],
                    ),
                    Image.asset(
                      './lib/assets/matergame.png',
                      width: screenSize.width * 0.3,
                      fit: BoxFit.fill,
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
