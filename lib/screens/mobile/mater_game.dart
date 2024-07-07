import 'package:flutter/material.dart';

class MaterGameMobile extends StatefulWidget {
  const MaterGameMobile({super.key});

  @override
  State<MaterGameMobile> createState() => _MaterGameMobileState();
}

class _MaterGameMobileState extends State<MaterGameMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(
                './lib/assets/competicao.png',
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.8,
              ),
            ],
          ),
        )
      ],
    );
  }
}
