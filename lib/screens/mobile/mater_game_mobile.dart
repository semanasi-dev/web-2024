import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';

class MaterGameMobile extends StatelessWidget {
  final Size? screenSize;
  MaterGameMobile({
    super.key,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            children: [
              SizedBox(
                height: screenSize!.height * 0.01,
              ),
              Image.asset(
                './lib/assets/competicao.png',
              ),
              SizedBox(
                height: screenSize!.height * 0.02,
              ),
              SelectableText(
                'Durante a semana, vai rolar uma competição para ver quem encontra mais MaterCodes espalhados pelo ambiente do evento. Os ganhadores vão receber seus prêmios ao final da semana.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize!.aspectRatio * 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jura',
                ),
              ),
              SizedBox(
                height: screenSize!.height * 0.035,
              ),
              SelectableText(
                'Se encontrar um, não perca sua chance: pegue seu telefone e se garanta no placar!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize!.aspectRatio * 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jura',
                ),
              ),
              SizedBox(
                height: screenSize!.height * 0.035,
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
                            size: screenSize!.aspectRatio * 10,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: screenSize!.width * 0.01,
                          ),
                          SelectableText(
                            'Horário de início',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize!.aspectRatio * 30,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: screenSize!.aspectRatio * 10,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: screenSize!.width * 0.01,
                          ),
                          SelectableText(
                            'Quando',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize!.aspectRatio * 30,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: screenSize!.aspectRatio * 10,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: screenSize!.width * 0.01,
                          ),
                          SelectableText(
                            'Locais',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize!.aspectRatio * 30,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: screenSize!.aspectRatio * 10,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: screenSize!.width * 0.01,
                          ),
                          SelectableText(
                            'Locais',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize!.aspectRatio * 30,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: screenSize!.aspectRatio * 10,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: screenSize!.width * 0.01,
                          ),
                          SelectableText(
                            'Locais',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize!.aspectRatio * 30,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: screenSize!.aspectRatio * 10,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: screenSize!.width * 0.01,
                          ),
                          SelectableText(
                            'Locais',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize!.aspectRatio * 30,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    './lib/assets/matergame.png',
                    height: screenSize!.height * 0.25,
                  ),
                ],
              ),
              SizedBox(
                height: screenSize!.height * 0.035,
              ),
              HoverButton(
                  cores: const [Colors.black, Colors.black],
                  texto: 'Ler MaterCode',
                  onPressed: () {},
                  fonte: 'Jura'),
              SizedBox(
                height: screenSize!.height * 0.01,
              ),
              Opacity(
                opacity: 0.5,
                child: const SelectableText(
                  '(Exclusivo para celulares)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: screenSize!.height * 0.015,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
