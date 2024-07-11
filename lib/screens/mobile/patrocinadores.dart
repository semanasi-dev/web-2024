import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/widgets/mobile/patrocinadores_container.dart';

class PatrocinadoresMobile extends StatefulWidget {
  const PatrocinadoresMobile({super.key});

  @override
  State<PatrocinadoresMobile> createState() => PatrocinadoresMobileState();
}

class PatrocinadoresMobileState extends State<PatrocinadoresMobile> {
  List<PatrocinadoresContainerMobile> listaDePatrocinadoresSenior = [
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/aiqfome.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/ids.jpg'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/bv.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/sinnc.jpg'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/softfocus.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/viasoft.jpg'),
  ];

  List<PatrocinadoresContainerMobile> listaDePatrocinadoresPlenos = [
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/aiqfome.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/ids.jpg'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/bv.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/sinnc.jpg'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/softfocus.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/viasoft.jpg'),
  ];

  List<PatrocinadoresContainerMobile> listaDePatrocinadoresJuniors = [
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/aiqfome.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/ids.jpg'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/bv.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/sinnc.jpg'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/softfocus.png'),
    const PatrocinadoresContainerMobile(
        asset: './lib/assets/patrocinadores/viasoft.jpg'),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      children: [
        Container(
          color: const Color(0xFFF72585),
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.white],
                      stops: [0.60, 1.0],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Image.asset('./lib/assets/patrocinadores/patrocinadores.png'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  SelectableText(
                    'Seniors',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.09,
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.bold),
                  ),
                  CarouselSlider(
                    items: listaDePatrocinadoresSenior
                        .map(
                          (item) => Center(child: item),
                        )
                        .toList(),
                    options: CarouselOptions(
                      height: screenSize.height * 0.35,
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
                  buildCarouselIndicators1(),
                  SelectableText(
                    'Plenos',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.09,
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.bold),
                  ),
                  CarouselSlider(
                    items: listaDePatrocinadoresPlenos
                        .map(
                          (item) => Center(child: item),
                        )
                        .toList(),
                    options: CarouselOptions(
                      height: screenSize.height * 0.35,
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
                  buildCarouselIndicators2(),
                  SelectableText(
                    'Juniors',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.09,
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.bold),
                  ),
                  CarouselSlider(
                    items: listaDePatrocinadoresJuniors
                        .map(
                          (item) => Center(child: item),
                        )
                        .toList(),
                    options: CarouselOptions(
                      height: screenSize.height * 0.35,
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
                  buildCarouselIndicators3(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  buildCarouselIndicators1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < listaDePatrocinadoresSenior.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 13 : 10,
            width: i == currentPage ? 13 : 10,
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

  buildCarouselIndicators2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < listaDePatrocinadoresPlenos.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 13 : 10,
            width: i == currentPage ? 13 : 10,
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

  buildCarouselIndicators3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < listaDePatrocinadoresJuniors.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 13 : 10,
            width: i == currentPage ? 13 : 10,
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
