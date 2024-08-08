import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';

class PalestranteContainerMobile extends StatefulWidget {
  final Palestrante palestrante;
  const PalestranteContainerMobile({super.key, required this.palestrante});

  @override
  State<PalestranteContainerMobile> createState() =>
      PalestranteContainerMobileState();
}

class PalestranteContainerMobileState
    extends State<PalestranteContainerMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.5,
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Color(0xFF581584),
          ],
        ),
        border: Border.all(
          color: Colors.white,
          width: 2.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SelectableText(
            widget.palestrante.diaDaSemana!,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.aspectRatio * 25,
              fontFamily: 'Jura',
            ),
          ),
          CircleAvatar(
            radius: screenSize.width * 0.13,
            backgroundImage: AssetImage(widget.palestrante.assetImage),
          ),
          SelectableText(
            widget.palestrante.nome,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.aspectRatio * 25,
              fontFamily: 'Jura',
            ),
          ),
          SelectableText(
            textAlign: TextAlign.center,
            widget.palestrante.tema,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.aspectRatio * 25,
              fontFamily: 'Jura',
            ),
          ),
          SelectableText(
            widget.palestrante.horarios,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.aspectRatio * 25,
              fontFamily: 'Jura',
            ),
          ),
        ],
      ),
    );
  }
}
