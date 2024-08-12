import 'package:flutter/material.dart';

class RealizacaoMobile extends StatelessWidget {
  RealizacaoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          './lib/assets/realizacao/unimater.png',
          width: screenSize.width * 0.5,
        ),
        Image.asset(
          './lib/assets/realizacao/sistemas.png',
          width: screenSize.width * 0.5,
        )
      ],
    );
  }
}
