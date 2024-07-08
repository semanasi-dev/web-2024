import 'package:flutter/material.dart';

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
            //left: screenSize.width * 0.07,
            top: screenSize.width * 0.02,
            //right: screenSize.width * 0.07,
          ),
          color: Colors.black,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    './lib/assets/competicao.png',
                    height: screenSize.height * 0.25,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'Durante a semana, vai rolar uma competição para ver quem encontra\nmais MaterCodes espalhados pelo ambiente do evento.\nOs ganhadores vão receber seus prêmios ao final da semana.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.015,
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
                          fontSize: MediaQuery.of(context).size.width * 0.02,
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
                ],
              ),
              Image.asset(
                './lib/assets/matergame.png',
                height: screenSize.height * 0.8,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ],
    );
  }
}
