import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/palestrantes_container.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class PatrocinadoresPage extends StatefulWidget {
  const PatrocinadoresPage({super.key});

  @override
  State<PatrocinadoresPage> createState() => PatrocinadoresPageState();
}

class PatrocinadoresPageState extends State<PatrocinadoresPage> {
  List<PalestrantesContainer> listaPalestrantes = [
    PalestrantesContainer(),
    PalestrantesContainer(),
    PalestrantesContainer()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool isSmallScreen = screenSize.width < 800;

    return Column(
      children: [
        const SizedBox(height: 20),
        const TextoComBorda(
          text: 'CONFIRA A PROGRAMAÇÃO',
          fontSize: 30,
          textColor: Colors.white,
          borderColor: Color(0xFF5886E0),
        ),
        const SizedBox(height: 0.1),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: CarouselSlider(
              items: listaPalestrantes
                  .map(
                    (e) => Center(
                      child: Container(
                        child: e,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
          ),
        ),
        buildCarouselIndicators(),
      ],
    );
  }

  buildCarouselIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < listaPalestrantes.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 7 : 5,
            width: i == currentPage ? 7 : 5,
            decoration: BoxDecoration(
              color: i == currentPage ? Colors.grey : Colors.black,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }
}
