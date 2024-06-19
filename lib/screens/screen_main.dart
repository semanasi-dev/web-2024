import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/container_qr_code_screen.dart';
import 'package:semanaacademica2024/screens/container_top_screen.dart';
import 'package:semanaacademica2024/screens/palestrantes_screen.dart';
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
    bool isSmallScreen = screenSize.width < 800;

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
                height: screenSize.height * 1.3,
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
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.blue.withOpacity(0.9)],
              ),
            ),
          ),
          Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.transparent],
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.transparent],
                  ),
                ),
              ),
              Container(
                height: screenSize.height * 1.2,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF4BC8EF), Color(0xFF13A1A2)],
                  ),
                ),
                child: Container(
                    padding: const EdgeInsets.only(top: 40, bottom: 40),
                    child: const PatrocinadoresPage()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
