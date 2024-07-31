import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/dia_da_semana_enum.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/widgets/desktop/palestrante_container_desktop.dart';

class PalestrantesDesktop extends StatefulWidget {
  const PalestrantesDesktop({super.key});

  @override
  State<PalestrantesDesktop> createState() => _PalestrantesDesktopState();
}

class _PalestrantesDesktopState extends State<PalestrantesDesktop> {
  List<PalestranteContainerDesktop> listaDePalestrantes = [
    PalestranteContainerDesktop(
      diaDaSemana: DiaDaSemana.segunda,
      palestrante1: Palestrante(
        nome: 'Nome1',
        tema: 'Mentoria de Careira',
        horarios: '19:30 ás 20:10',
        assetImage: './lib/assets/palestrantes/alexandro.jpg',
      ),
      palestrante2: Palestrante(
        nome: 'Nome2',
        tema: 'Liderança',
        horarios: '19:30 ás 20:10',
        assetImage: './lib/assets/palestrantes/alexandro.jpg',
      ),
    ),
    PalestranteContainerDesktop(
      diaDaSemana: DiaDaSemana.terca,
      palestrante1: Palestrante(
        nome: 'Nome3',
        tema: 'Inteligência Artificial',
        horarios: '19:30 ás 20:10',
        assetImage: './lib/assets/palestrantes/alexandro.jpg',
      ),
      palestrante2: Palestrante(
        nome: 'Thiago Reolon',
        tema: 'O Futuro da Análise de Dados:\nTendências e Oportunidade',
        horarios: '20:50 ás 21:30',
        assetImage: './lib/assets/palestrantes/thiago.jpg',
      ),
    ),
    PalestranteContainerDesktop(
      diaDaSemana: DiaDaSemana.quarta,
      palestrante1: Palestrante(
        nome: 'Alexandro Hervis',
        tema: 'Arquitetura de Projetos',
        horarios: '19:30 ás 20:10',
        assetImage: './lib/assets/palestrantes/alexandro.jpg',
      ),
      palestrante2: Palestrante(
        nome: 'nome4',
        tema: 'Dev. Full Stack',
        horarios: '20:50 ás 21:30',
        assetImage: './lib/assets/palestrantes/alexandro.jpg',
      ),
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
          width: double.infinity,
          color: const Color(0xFF581584),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Image.asset(
                './lib/assets/palestrantes/confira_desktop.png',
                width: screenSize.width * 0.35,
                fit: BoxFit.cover,
              ),
              CarouselSlider(
                items: listaDePalestrantes
                    .map(
                      (item) => Center(child: item),
                    )
                    .toList(),
                options: CarouselOptions(
                  aspectRatio: 35 / 12,
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
