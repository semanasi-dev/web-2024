import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/widgets/palestrante_container.dart';

class PalestrantesMobile extends StatefulWidget {
  const PalestrantesMobile({super.key});

  @override
  State<PalestrantesMobile> createState() => _PalestrantesMobileState();
}

class _PalestrantesMobileState extends State<PalestrantesMobile> {
  List<Widget> listaDePalestrantes = [
    PalestranteContainer(
      palestrante: Palestrante(
          nome: 'Nome1',
          tema: 'Mentoria de Careira',
          horarios: '19:30 ás 20:10',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Segunda-Feira'),
    ),
    PalestranteContainer(
      palestrante: Palestrante(
          nome: 'Nome1',
          tema: 'Liderança',
          horarios: '20:50 ás 21:30',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Segunda-Feira'),
    ),
    PalestranteContainer(
      palestrante: Palestrante(
          nome: 'Nome1',
          tema: 'Inteligência Artificial',
          horarios: '19:30 ás 20:10',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Terça-Feira'),
    ),
    PalestranteContainer(
      palestrante: Palestrante(
          nome: 'Thiago Reolon',
          tema: 'O Futuro da Análise de Dados: Tendências e Oportunidade',
          horarios: '20:50 ás 21:30',
          assetImage: './lib/assets/palestrantes/thiago.jpg',
          diaDaSemana: 'Terça-Feira'),
    ),
    PalestranteContainer(
      palestrante: Palestrante(
          nome: 'Alexandro Hervis',
          tema: 'Arquitetura de Projetos',
          horarios: '19:30 ás 20:10',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Quarta-Feira'),
    ),
    PalestranteContainer(
      palestrante: Palestrante(
          nome: 'Nome1',
          tema: 'Dev. Full Stack',
          horarios: '20:50 ás 21:30',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Quarta-Feira'),
    ),
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          color: const Color(0xFF581584),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Color(0xFFF72585)],
                      stops: [0.70, 1.0],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Image.asset('./lib/assets/palestrantes/confira_mobile.png'),
                  CarouselSlider(
                    items: listaDePalestrantes
                        .map(
                          (item) => Center(child: item),
                        )
                        .toList(),
                    options: CarouselOptions(
                      aspectRatio: 1 / 1,
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
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
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
        for (int i = 0; i < listaDePalestrantes.length; i++)
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
