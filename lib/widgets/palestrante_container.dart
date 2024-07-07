import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/utils/utils.dart';

class PalestranteContainer extends StatefulWidget {
  final Palestrante palestrante;
  const PalestranteContainer({super.key, required this.palestrante});

  @override
  State<PalestranteContainer> createState() => PalestranteContainerState();
}

class PalestranteContainerState extends State<PalestranteContainer> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Utils.isMobile(context) ? mobile(screenSize) : desktop(screenSize);
  }

  mobile(Size screenSize) {
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
                widget.palestrante.diaDaSemana,
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

  desktop(Size screenSize) {
    return Container(
      width: screenSize.width * 0.2,
      height: screenSize.width * 0.28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF4D86F4), Color(0xFF9980D9)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF8F07FC),
                    Color(0xFFE15C32),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: CircleAvatar(
                radius: screenSize.width * 0.050,
                backgroundImage: AssetImage(widget.palestrante.assetImage),
              ),
            ),
          ),
          SelectableText(
            widget.palestrante.nome,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.width * 0.020,
              fontFamily: 'Jura',
            ),
          ),
          SelectableText(
            widget.palestrante.tema,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.width * 0.015,
              fontFamily: 'Jura',
            ),
          ),
          SelectableText(
            widget.palestrante.horarios,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.width * 0.013,
              fontFamily: 'Jura',
            ),
          ),
        ],
      ),
    );
  }
}
