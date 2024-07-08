import 'package:flutter/material.dart';

class TabletMobile extends StatefulWidget {
  const TabletMobile({super.key});

  @override
  State<TabletMobile> createState() => _TabletMobileState();
}

class _TabletMobileState extends State<TabletMobile> {
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
                  'Desculpa mas ainda nao temos reponsividade para tablets',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.height * 0.023,
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
