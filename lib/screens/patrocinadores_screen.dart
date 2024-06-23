import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/enum.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/gradient_container.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class PatrocinadoresPage extends StatefulWidget {
  const PatrocinadoresPage({super.key});

  @override
  State<PatrocinadoresPage> createState() => _PatrocinadoresPageState();
}

class _PatrocinadoresPageState extends State<PatrocinadoresPage> {
  int currentPage = 0;

  List<GradientContainer> listaPatrocinadores = const [
    GradientContainer(tela: PalestrantesPatrocinadores.patrocinadores),
    GradientContainer(tela: PalestrantesPatrocinadores.patrocinadores),
    GradientContainer(tela: PalestrantesPatrocinadores.patrocinadores),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Utils.isMobile(context) ? mobile(screenSize) : desktop(screenSize);
  }

  mobile(Size screenSize) {
    return Expanded(
      child: Container(
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
            Image.asset('./lib/assets/patrocinadores.png'),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            SizedBox(
              height: screenSize.height * 0.010,
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
                  height: screenSize.height * 0.75,
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

  desktop(Size screenSize) {
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
                  height: screenSize.height * 0.6,
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
