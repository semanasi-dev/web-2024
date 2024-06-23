import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/utils/utils.dart';

class PalestranteContainer extends StatefulWidget {
  final Palestrante palestrante;

  final Size screenSize;
  final bool? temaGrande;
  const PalestranteContainer(
      {super.key,
      required this.screenSize,
      required this.palestrante,
      this.temaGrande});

  @override
  State<PalestranteContainer> createState() => PalestranteContainerState();
}

class PalestranteContainerState extends State<PalestranteContainer> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = widget.screenSize;

    return Utils.isMobile(context)
        ? mobileScreen(screenSize)
        : desktopSreen(screenSize);
  }

  mobileScreen(Size screenSize) {
    return Container(
      width: widget.screenSize.width * 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF4D86F4), Color(0xFF9980D9)],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: screenSize.height * 0.9),
          SizedBox(
            height: widget.screenSize.height * 8,
            child: Container(
              padding: const EdgeInsets.all(6),
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
                radius: widget.screenSize.width * 7 - 4,
                backgroundImage: AssetImage(widget.palestrante.assetImage),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.9),
          Text(
            widget.palestrante.nome,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.width * 1.9,
              fontFamily: 'Jura',
            ),
          ),
          SizedBox(height: screenSize.height * 0.9),
          Text(
            widget.palestrante.tema,
            style: TextStyle(
              color: Colors.white,
              fontSize: (widget.temaGrande ?? false)
                  ? widget.screenSize.width * 1
                  : widget.screenSize.width * 1.7,
              fontFamily: 'Jura',
            ),
          ),
          SizedBox(height: screenSize.height * 0.9),
          Text(
            widget.palestrante.horarios,
            style: TextStyle(
              color: Colors.white,
              fontSize: widget.screenSize.width * 1.5,
              fontFamily: 'Jura',
            ),
          ),
        ],
      ),
    );
  }

  desktopSreen(fontSize) {
    return Container(
      height: widget.screenSize.height * 0.65,
      width: widget.screenSize.width * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.screenSize.height * 0.02),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF4D86F4), Color(0xFF9980D9)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.palestrante.assetImage),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.palestrante.nome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontFamily: 'Jura',
                ),
              ),
              Text(
                widget.palestrante.tema,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: widget.screenSize.width,
                  fontFamily: 'Jura',
                ),
              ),
              Text(
                widget.palestrante.horarios,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: widget.screenSize.width,
                  fontFamily: 'Jura',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
