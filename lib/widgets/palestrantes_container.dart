import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

// ignore: must_be_immutable
class PalestrantesContainer extends StatefulWidget {
  String? dirAsset;

  PalestrantesContainer({super.key, this.dirAsset});

  @override
  State<PalestrantesContainer> createState() => PalestrantesContainerState();
}

class PalestrantesContainerState extends State<PalestrantesContainer> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isSmallScreen = screenSize.width < 800;

    final double radius = screenSize.width * 0.075;

    return SizedBox(
      height: screenSize.height * 0.9,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF8554D2),
                Color(0xFF3070F4),
              ],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: screenSize.height * 0.03),
              child: Column(
                children: [
                  TextoComBorda(
                    text: 'Segunda feira',
                    fontFamily: 'Cristik',
                    borderColor: const Color(0xFF5C8ED3),
                    textColor: Colors.white,
                    fontSize: 40,
                  ),
                  TextoComBorda(
                    text: '02/02/2024',
                    fontFamily: 'Jura',
                    borderColor: const Color(0xFF5C8ED3),
                    textColor: Colors.white,
                    fontSize: 25,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: screenSize.height * 0.65,
                  width: screenSize.width * 0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF4D86F4),
                        Color(0xFF9980D9),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.01,
                      ),
                      Container(
                        width: radius * 2,
                        height: radius * 2,
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
                              radius: radius - 3,
                              backgroundImage:
                                  const AssetImage('./lib/assets/Celular.png'),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nome do',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.012,
                              fontFamily: 'Jura',
                            ),
                          ),
                          Text(
                            'palestrante',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.012,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'MENTORIA DE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.015,
                              fontFamily: 'Jura',
                            ),
                          ),
                          Text(
                            'CARREIRA',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.015,
                              fontFamily: 'Jura',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '19:30PM até 20:20PM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width * 0.011,
                          fontFamily: 'Jura',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
