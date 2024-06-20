import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/widgets/container_palestrante.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class PalestrantesContainer extends StatefulWidget {
  final String diaDaSemana;
  final String ddMMyyyy;
  final List<Palestrante> palestrantes;

  const PalestrantesContainer({
    super.key,
    required this.diaDaSemana,
    required this.ddMMyyyy,
    required this.palestrantes,
  });

  @override
  State<PalestrantesContainer> createState() => PalestrantesContainerState();
}

class PalestrantesContainerState extends State<PalestrantesContainer> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double radius = screenSize.width * 0.075;
    double fontSizeSmall = screenSize.width * 0.012;
    double fontSizeMedium = screenSize.width * 0.015;
    double fontSizeLarge = screenSize.width * 0.02;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF8554D2), Color(0xFF3070F4)],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextoComBorda(
            text: widget.diaDaSemana,
            fontFamily: 'Cristik',
            borderColor: const Color(0xFF5C8ED3),
            textColor: Colors.white,
            fontSize: fontSizeLarge,
          ),
          TextoComBorda(
            text: widget.ddMMyyyy,
            fontFamily: 'Jura',
            borderColor: const Color(0xFF5C8ED3),
            textColor: Colors.white,
            fontSize: fontSizeMedium,
          ),
          Expanded(
            child: SizedBox(
              height: screenSize.height * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerPalestrante(
                    palestrante: widget.palestrantes[0],
                    radius: radius,
                    screenSize: screenSize,
                  ),
                  ContainerPalestrante(
                    palestrante: widget.palestrantes[1],
                    radius: radius,
                    screenSize: screenSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
