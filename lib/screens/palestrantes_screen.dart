import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/widgets/palestrantes_container.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class PalestrantesPage extends StatefulWidget {
  const PalestrantesPage({super.key});

  @override
  State<PalestrantesPage> createState() => PalestrantesPageState();
}

class PalestrantesPageState extends State<PalestrantesPage> {
  List<PalestrantesContainer> listaPalestrantes = [
    PalestrantesContainer(
      diaDaSemana: 'Segunda-Feira',
      ddMMyyyy: '02/09/2024',
      palestrantes: [
        Palestrante(
            nome: 'Nome1',
            sobreNome: 'Sobrenome1',
            tema: 'Mentoria de Careira',
            horarios: '19:30 ás 20:10',
            assetImage: './lib/assets/Celular.png'),
        Palestrante(
            nome: 'Nome2',
            sobreNome: 'Sobrenome2',
            tema: 'Liderança',
            horarios: '20:50 ás 21:30',
            assetImage: './lib/assets/Celular.png'),
      ],
    ),
    PalestrantesContainer(
      diaDaSemana: 'Terça-Feira',
      ddMMyyyy: '03/09/2024',
      palestrantes: [
        Palestrante(
            nome: 'Nome3',
            sobreNome: 'Sobrenome3',
            tema: 'Inteligência Artificial',
            horarios: '19:30 ás 20:10',
            assetImage: './lib/assets/Celular.png'),
        Palestrante(
            nome: 'Nome4',
            sobreNome: 'Sobrenome4',
            tema: 'Análise de Dados',
            horarios: '19:30 ás 20:10',
            assetImage: './lib/assets/Celular.png'),
      ],
    ),
    PalestrantesContainer(
      diaDaSemana: 'Quarta-Feira',
      ddMMyyyy: '04/09/2024',
      palestrantes: [
        Palestrante(
            nome: 'Nome5',
            sobreNome: 'Sobrenome5',
            tema: 'Arquitetura de Projetos',
            horarios: '19:30 ás 20:10',
            assetImage: './lib/assets/Celular.png'),
        Palestrante(
            nome: 'Nome6',
            sobreNome: 'Sobrenome6',
            tema: 'Dev. Full Stack',
            horarios: '19:30 ás 20:10',
            assetImage: './lib/assets/Celular.png'),
      ],
    ),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    //bool isSmallScreen = screenSize.width < 800;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextoComBorda(
          text: 'CONFIRA A PROGRAMAÇÃO',
          fontSize: 50,
          textColor: Colors.white,
          borderColor: Color(0xFF5886E0),
        ),
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
                viewportFraction: 0.7,
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
