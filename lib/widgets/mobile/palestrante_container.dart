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
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          width: screenSize.width * 0.5,
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
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              SelectableText(
                widget.palestrante.diaDaSemana!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.05,
                  fontFamily: 'Jura',
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              CircleAvatar(
                radius: screenSize.width * 0.13,
                backgroundImage: AssetImage(widget.palestrante.assetImage),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              SelectableText(
                widget.palestrante.nome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.05,
                  fontFamily: 'Jura',
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              SelectableText(
                textAlign: TextAlign.center,
                widget.palestrante.tema,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.04,
                  fontFamily: 'Jura',
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              SelectableText(
                widget.palestrante.horarios,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.05,
                  fontFamily: 'Jura',
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
