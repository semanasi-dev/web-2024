import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/enum.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';

class PalestranteContainerDesktop extends StatefulWidget {
  final DiaDaSemana diaDaSemana;
  final Palestrante palestrante1;
  final Palestrante palestrante2;

  const PalestranteContainerDesktop(
      {super.key,
      required this.diaDaSemana,
      required this.palestrante1,
      required this.palestrante2});

  @override
  State<PalestranteContainerDesktop> createState() =>
      _PalestranteContainerDesktopState();
}

class _PalestranteContainerDesktopState
    extends State<PalestranteContainerDesktop> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadiusDirectional.circular(50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  containerPalestrante(
                    screenSize,
                    widget.palestrante1.assetImage,
                    widget.palestrante1.nome,
                    widget.palestrante1.tema,
                    widget.palestrante1.horarios,
                  ),
                  containerPalestrante(
                    screenSize,
                    widget.palestrante2.assetImage,
                    widget.palestrante2.nome,
                    widget.palestrante2.tema,
                    widget.palestrante2.horarios,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget containerPalestrante(
    Size screenSize,
    String assetImage,
    String nome,
    String tema,
    String horarios,
  ) {
    return Wrap(
      children: [
        Container(
          width: screenSize.height * 0.4,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Color(0xFF581584),
                ],
              ),
              borderRadius: BorderRadiusDirectional.circular(50)),
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: screenSize.width * 0.07,
                backgroundImage: AssetImage(assetImage),
              ),
              SelectableText(
                textAlign: TextAlign.center,
                nome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.02,
                  fontFamily: 'Jura',
                ),
              ),
              SelectableText(
                textAlign: TextAlign.center,
                tema,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.02,
                  fontFamily: 'Jura',
                ),
              ),
              SelectableText(
                textAlign: TextAlign.center,
                horarios,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.02,
                  fontFamily: 'Jura',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
