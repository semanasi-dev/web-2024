import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/desktop/patrocinadores_container.dart';

class PatrocinadoresDesktop extends StatefulWidget {
  const PatrocinadoresDesktop({super.key});

  @override
  State<PatrocinadoresDesktop> createState() => _PatrocinadoresDesktopState();
}

class _PatrocinadoresDesktopState extends State<PatrocinadoresDesktop> {
  List<PatrocinadoresContainerDesktop> listaDePatrocinadores = [
    PatrocinadoresContainerDesktop(
      senioridade: 'Seniors',
      assets: [
        './lib/assets/patrocinadores/aiqfome.png',
        './lib/assets/patrocinadores/bv.png',
        './lib/assets/patrocinadores/softfocus.png'
      ],
    ),
    PatrocinadoresContainerDesktop(
      senioridade: 'Plenos',
      assets: [
        './lib/assets/patrocinadores/aiqfome.png',
        './lib/assets/patrocinadores/bv.png',
        './lib/assets/patrocinadores/softfocus.png'
      ],
    ),
    PatrocinadoresContainerDesktop(
      senioridade: 'Juniors',
      assets: [
        './lib/assets/patrocinadores/aiqfome.png',
        './lib/assets/patrocinadores/bv.png',
        './lib/assets/patrocinadores/softfocus.png'
      ],
    ),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Wrap(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF581584),
                Color(0xFFF72585),
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.white],
                      stops: [0.50, 1.0],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.015,
                  ),
                  Image.asset('./lib/assets/patrocinadores/patrocinadores.png'),
                  SizedBox(
                    height: screenSize.height * 0.015,
                  ),
                  CarouselSlider(
                    items: listaDePatrocinadores
                        .map(
                          (item) => Center(child: item),
                        )
                        .toList(),
                    options: CarouselOptions(
                      aspectRatio: 40 / 9,
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      viewportFraction: 0.7,
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            currentPage = index;
                          },
                        );
                      },
                    ),
                  ),
                  buildCarouselIndicators(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  buildCarouselIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < listaDePatrocinadores.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 18 : 15,
            width: i == currentPage ? 18 : 15,
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
