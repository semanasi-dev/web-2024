import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/widgets/hover_button.dart';

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
      'Enchendo linguiça',
      'Enchendo linguiça',
      'Enchendo linguiça',
    ];

    return Container(
      width: double.infinity,
      height: 1100,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        children: [
          SizedBox(
            height: 1000,
            width: 1050,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 800,
                    width: 800,
                    decoration: BoxDecoration(
                      color: const Color(0xFF98FFFF),
                      borderRadius: BorderRadius.circular(400),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    right: 340,
                    child: Image.asset(
                      './lib/assets/qrcode.png',
                      height: 1000,
                      width: 1000,
                    ),
                  ),
                  Positioned(
                    left: 350,
                    bottom: 310,
                    child: Image.asset(
                      './lib/assets/Celular.png',
                      height: 700,
                      width: 800,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Image.asset(
                      './lib/assets/tesouro.png',
                      height: 300,
                      width: 600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1100,
            width: 780,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 80),
                  child: textoComBorda(
                    'COMPETIÇÃO\nMATER CODE',
                    fontSize: screenSize.width * 0.03,
                    textColor: Colors.white,
                    borderColor: const Color(0xFF8E99CE),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Durante a semana, vai rolar uma competição\npara ver quem encontra mais MaterCodes\nespalhados pelo ambiente do evento. Os\nganhadores vão receber seus prêmios ao final\nda semana.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenSize.width * 0.015,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Jura',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Se encontrar um, não perca sua chance:\npegue seu telefone e se garanta no placar!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenSize.width * 0.011,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Jura',
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Detalhes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenSize.width * 0.015,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Jura',
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  children: detalhes.map((item) {
                    return ListTile(
                      leading: const Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.black,
                      ),
                      title: Text(
                        item,
                        style: TextStyle(
                          fontSize: screenSize.width * 0.012,
                          color: Colors.black,
                          fontFamily: 'Jura',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.only(left: 200),
                  child: HoverButton(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget textoComBorda(String text,
      {double? fontSize, Color? textColor, Color? borderColor}) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 4
              ..color = borderColor!,
          ),
          textAlign: TextAlign.start,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: fontSize,
            color: textColor,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
