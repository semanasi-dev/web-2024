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
    ];

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: screenSize.height * 1.05,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Flex(
              direction:
                  constraints.maxWidth > 800 ? Axis.horizontal : Axis.vertical,
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: FractionallySizedBox(
                      widthFactor: constraints.maxWidth > 800 ? 0.7 : 0.9,
                      heightFactor: constraints.maxWidth > 800 ? 0.9 : 0.7,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFF98FFFF),
                                borderRadius: BorderRadius.circular(500),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: constraints.maxHeight * 0.1,
                            right: constraints.maxWidth * 0.15,
                            child: Image.asset(
                              './lib/assets/qrcode.png',
                              height: constraints.maxHeight * 0.2,
                              width: constraints.maxWidth * 0.2,
                            ),
                          ),
                          Positioned(
                            left: constraints.maxWidth * 0.1,
                            bottom: constraints.maxHeight * 0.28,
                            child: Image.asset(
                              './lib/assets/Celular.png',
                              height: constraints.maxHeight * 0.8,
                              width: constraints.maxWidth * 0.8,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Image.asset(
                              './lib/assets/tesouro.png',
                              height: constraints.maxHeight * 0.15,
                              width: constraints.maxWidth * 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textoComBorda(
                          'COMPETIÇÃO\nMATER CODE',
                          fontSize: constraints.maxWidth * 0.03,
                          textColor: Color(0xFF853BF7),
                          borderColor: const Color(0xFF8E99CE),
                        ),
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
                        const SizedBox(height: 20),
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: constraints.maxWidth * 0.015,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Jura',
                          ),
                        ),
                        const SizedBox(height: 20),
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
                                  fontSize: constraints.maxWidth * 0.012,
                                  color: Colors.black,
                                  fontFamily: 'Jura',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 20),
                        Center(
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
                  ),
                ),
              ],
            );
          },
        ),
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
