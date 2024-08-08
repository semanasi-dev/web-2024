import 'package:flutter/material.dart';

class PrincipalScreenTablet extends StatefulWidget {
  const PrincipalScreenTablet({super.key});

  @override
  State<PrincipalScreenTablet> createState() => _PrincipalScreenTabletState();
}

class _PrincipalScreenTabletState extends State<PrincipalScreenTablet> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/background_top.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  'Desculpe, mas ainda nao temos reponsividade para tablets',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.aspectRatio * 25,
                      fontFamily: 'Jura',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Image.asset(
                  './lib/assets/logo.png',
                  height: screenSize.height * 0.2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
