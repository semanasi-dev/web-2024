import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/patrocinadores_container.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class PatrocinadoresPage extends StatefulWidget {
  const PatrocinadoresPage({super.key});

  @override
  State<PatrocinadoresPage> createState() => _PatrocinadoresPageState();
}

class _PatrocinadoresPageState extends State<PatrocinadoresPage> {
  int currentPage = 0;

  List<PatrocinadoresContainer> listaPatrocinadores = const [
    PatrocinadoresContainer(),
    PatrocinadoresContainer(),
    PatrocinadoresContainer(),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // bool isSmallScreen = screenSize.width < 800;

    return Expanded(
      child: Container(
        width: double.infinity,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            const TextoComBorda(
              text: 'PATROCINADORES',
              fontSize: 50,
              textColor: Colors.white,
              borderColor: Color(0xFF5886E0),
            ),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider(
                items: listaPatrocinadores
                    .map(
                      (e) => e,
                    )
                    .toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                ),
              ),
            ),
            buildCarouselIndicators()
          ],
        ),
      ),
    );
  }

  buildCarouselIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < listaPatrocinadores.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 17 : 13,
            width: i == currentPage ? 17 : 13,
            decoration: BoxDecoration(
              color: i == currentPage ? Colors.grey : Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                color: i == currentPage ? Colors.black : Colors.black,
                width: 2,
              ),
            ),
          )
      ],
    );
  }
}
