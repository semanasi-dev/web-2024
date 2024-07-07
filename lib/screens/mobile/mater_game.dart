import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';

class MaterGameMobile extends StatefulWidget {
  const MaterGameMobile({super.key});

  @override
  State<MaterGameMobile> createState() => _MaterGameMobileState();
}

class _MaterGameMobileState extends State<MaterGameMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
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
                padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                child: Column(
                  children: [
                    Image.asset(
                      './lib/assets/competicao.png',
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    SelectableText(
                      'Durante a semana, vai rolar uma competição para ver quem encontra mais MaterCodes espalhados pelo ambiente do evento. Os ganhadores vão receber seus prêmios ao final da semana.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jura',
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.035,
                    ),
                    SelectableText(
                      'Se encontrar um, não perca sua chance: pegue seu telefone e se garanta no placar!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jura',
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  'Horário de início',
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
                                  'Quando',
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
                                  'Locais',
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
                                  'Locais',
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
                                  'Locais',
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
                                  'Locais',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenSize.width * 0.04,
                                    fontFamily: 'Jura',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Image.asset(
                          './lib/assets/matergame.png',
                          height: screenSize.height * 0.25,
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
                      height: screenSize.height * 0.01,
                    ),
                    const SelectableText(
                      '(Exclusivo para celulares)',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.035,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
