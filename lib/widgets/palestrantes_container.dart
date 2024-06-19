import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/widgets/container_palestrante.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class PalestrantesContainer extends StatefulWidget {
  final String diaDaSemana;
  final String ddMMyyyy;
  final List<Palestrante> palestrantes;

  const PalestrantesContainer(
      {super.key,
      required this.diaDaSemana,
      required this.ddMMyyyy,
      required this.palestrantes});

  @override
  State<PalestrantesContainer> createState() => PalestrantesContainerState();
}

class PalestrantesContainerState extends State<PalestrantesContainer> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //bool isSmallScreen = screenSize.width < 800;

    final double radius = screenSize.width * 0.075;

    return SizedBox(
      height: screenSize.height * 0.85,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF8554D2),
                Color(0xFF3070F4),
              ],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: screenSize.height * 0.03),
              child: Column(
                children: [
                  TextoComBorda(
                    text: widget.diaDaSemana,
                    fontFamily: 'Cristik',
                    borderColor: const Color(0xFF5C8ED3),
                    textColor: Colors.white,
                    fontSize: 40,
                  ),
                  TextoComBorda(
                    text: widget.ddMMyyyy,
                    fontFamily: 'Jura',
                    borderColor: const Color(0xFF5C8ED3),
                    textColor: Colors.white,
                    fontSize: 25,
                  ),
                ],
              ),
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}
