import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/enum.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/gradient_container.dart';

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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF13A1A2),
              Color(0xFF6761DC),
              Color(0xFF8569DA),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.06,
            ),
            Image.asset('./lib/assets/patrocinadores/patrocinadores.png'),
            SizedBox(
              height: screenSize.height * 0.06,
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
                  height: screenSize.height * 0.55,
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
            buildCarouselIndicators(),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  desktop(Size screenSize) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF13A1A2),
              Color(0xFF6761DC),
              Color(0xFF8569DA),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              './lib/assets/patrocinadores/patrocinadores.png',
              width: screenSize.width * 0.50,
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
                  height: screenSize.height * 0.55,
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
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            buildCarouselIndicators(),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
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
