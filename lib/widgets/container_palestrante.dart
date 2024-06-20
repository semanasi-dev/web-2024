import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';

class ContainerPalestrante extends StatefulWidget {
  final Palestrante palestrante;
  final Size screenSize;
  final double radius;
  const ContainerPalestrante(
      {super.key,
      required this.screenSize,
      required this.radius,
      required this.palestrante});

  @override
  State<ContainerPalestrante> createState() => ContainerPalestranteState();
}

class ContainerPalestranteState extends State<ContainerPalestrante> {
  @override
  Widget build(BuildContext context) {
    double fontSize = widget.screenSize.width * 0.012;

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
            width: widget.radius * 2,
            height: widget.radius * 2,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.pink, Colors.purple],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: widget.radius - 3,
                  backgroundImage: AssetImage(widget.palestrante.assetImage),
                ),
              ),
            ),
          ),
          Text(
            widget.palestrante.nome,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontFamily: 'Jura',
            ),
          ),
          Text(
            widget.palestrante.sobreNome,
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
              fontSize: widget.screenSize.width * 0.015,
              fontFamily: 'Jura',
            ),
          ),
          Text(
            widget.palestrante.horarios,
            style: TextStyle(
              color: Colors.white,
              fontSize: widget.screenSize.width * 0.011,
              fontFamily: 'Jura',
            ),
          ),
        ],
      ),
    );
  }
}
