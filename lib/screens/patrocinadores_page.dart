import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/widgets/palestrantes_container.dart';

class PatrocinadoresPage extends StatefulWidget {
  const PatrocinadoresPage({super.key});

  @override
  State<PatrocinadoresPage> createState() => PatrocinadoresPageState();
}

class PatrocinadoresPageState extends State<PatrocinadoresPage> {
  List<PalestrantesContainer> listaPalestrantes = [PalestrantesContainer()];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        height: 600,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              CarouselSlider(
                items: listaPalestrantes
                    .map(
                      (e) => Center(
                        child: e,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                ),
              ),
              buildCarouselIndicators()
            ],
          ),
        ),
      ),
    );
  }

  buildCarouselIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 10 : 5,
            width: i == currentPage ? 10 : 5,
            decoration: BoxDecoration(
              color: i == currentPage ? Colors.grey : Colors.black,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }
}
