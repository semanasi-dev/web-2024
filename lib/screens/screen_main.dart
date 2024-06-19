import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/container_qr_code_screen.dart';
import 'package:semanaacademica2024/screens/container_top_screen.dart';
import 'package:semanaacademica2024/screens/palestrantes_screen.dart';
import 'package:semanaacademica2024/screens/patrocinadores_screen.dart';
import 'package:semanaacademica2024/widgets/nav_bar.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => ScreenMainState();
}

class ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    //bool isSmallScreen = screenSize.width < 800;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: NavBarHome(),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                './lib/assets/poligonos.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: screenSize.height * 1.1,
              ),
              Positioned.fill(
                top: screenSize.height / 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.blue],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, right: 40, left: 40),
                child: ContainerHomeTop(),
              ),
            ],
          ),
          Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.white.withOpacity(0.9)],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 40, left: 40),
            child: QrCodeContainer(),
          ),
          Container(
            height: screenSize.height * 0.18,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  const Color(0xFF4BC8EF).withOpacity(0.9)
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: screenSize.height * 1.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF4BC8EF).withOpacity(0.9),
                      const Color(0xFF13A1A2),
                    ],
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 0, bottom: 40),
                  child: const PalestrantesPage(),
                ),
              ),
            ],
          ),
          Container(
            height: screenSize.height * 1.1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF13A1A2).withOpacity(0.9),
                  const Color(0xFF6761DC),
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 0, bottom: 40),
              child: const PatrocinadoresPage(),
            ),
          )
        ],
      ),
    );
  }
}
