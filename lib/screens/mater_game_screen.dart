import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:semanaacademica2024/utils/Utils.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

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
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextoComBorda(
            text: 'COMPETIÇÃO\nMATER CODE',
            fontSize: screenSize.width * 0.07,
            textColor: const Color(0xFF853BF7),
            borderColor: const Color(0xFF8E99CE),
          ),
          const SizedBox(height: 50),
          SizedBox(
            height: screenSize.height * 0.7,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Image.asset(
                    './lib/assets/Componentes-Banner-MaterCode.png',
                    fit: BoxFit.cover,
                    opacity: const AlwaysStoppedAnimation(0.2),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Durante a semana, vai rolar uma competição para ver quem encontra mais MaterCodes espalhados pelo ambiente do evento. Os ganhadores vão receber seus prêmios ao final da semana.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.width * 0.04,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jura',
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Se encontrar um, não perca sua chance: pegue seu telefone e se garanta no placar!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.width * 0.04,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jura',
                      ),
                    ),
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
                              fontSize: screenSize.width * 0.035,
                              color: Colors.black,
                              fontFamily: 'Jura',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 200,
                      height: 35,
                      child: Center(
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: HoverButton(
                                texto: 'Ler MaterCode',
                                cores: const [
                                  Color(0xFF4CC9F0),
                                  Color(0xFF5458FE),
                                  Color(0xFFA380F9),
                                ],
                                bold: true,
                                fonte: 'Jura',
                                fontSize: screenSize.width * 0.038,
                                shadowColor: const Color(0xFF4CC9F0),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                './lib/assets/Celular_small.png',
                                width: 120, // Ajuste a largura desejada aqui
                                height: 120, // Ajuste a altura desejada aqui
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
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
          return Flex(
            direction:
                constraints.maxWidth > 800 ? Axis.horizontal : Axis.vertical,
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Image.asset(
                      './lib/assets/Componentes-Banner-MaterCode.png'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextoComBorda(
                        text: 'COMPETIÇÃO\nMATER CODE',
                        fontSize: constraints.maxWidth * 0.03,
                        textColor: const Color(0xFF853BF7),
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
