import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/mobile/palestrante_container_mobile.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class PalestrantesMobile extends StatefulWidget {
  PalestrantesMobile({
    super.key,
  });

  @override
  State<PalestrantesMobile> createState() => _PalestrantesMobileState();
}

class _PalestrantesMobileState extends State<PalestrantesMobile> {
  List<Widget> listaDePalestrantes = [
    PalestranteContainerMobile(
      palestrante: Palestrante(
          nome: 'Nome1',
          tema: 'Mentoria de Careira',
          horarios: '19:30 ás 20:10',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Segunda-Feira'),
    ),
    PalestranteContainerMobile(
      palestrante: Palestrante(
          nome: 'Nome1',
          tema: 'Liderança',
          horarios: '20:50 ás 21:30',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Segunda-Feira'),
    ),
    PalestranteContainerMobile(
      palestrante: Palestrante(
          nome: 'Nome1',
          tema: 'Inteligência Artificial',
          horarios: '19:30 ás 20:10',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Terça-Feira'),
    ),
    PalestranteContainerMobile(
      palestrante: Palestrante(
          nome: 'Thiago Reolon',
          tema: 'O Futuro da Análise de Dados:\nTendências e Oportunidade',
          horarios: '20:50 ás 21:30',
          assetImage: './lib/assets/palestrantes/thiago.jpg',
          diaDaSemana: 'Terça-Feira'),
    ),
    PalestranteContainerMobile(
      palestrante: Palestrante(
          nome: 'Alexandro Hervis',
          tema: 'Arquitetura de Projetos',
          horarios: '19:30 ás 20:10',
          assetImage: './lib/assets/palestrantes/alexandro.jpg',
          diaDaSemana: 'Quarta-Feira'),
    ),
    PalestranteContainerMobile(
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

    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            TextoComBorda(
              text: 'Confira a programação',
              fontFamily: 'Cristik',
              fontSize: screenSize.aspectRatio * 35,
              textColor: Colors.white,
              borderColor: const Color(0xFF935CAB),
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            CarouselSlider(
              items: listaDePalestrantes
                  .map(
                    (item) => Center(child: item),
                  )
                  .toList(),
              options: CarouselOptions(
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
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            buildCarouselIndicators(),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectableText(
              'Seniors',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: screenSize.aspectRatio * 50,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Utils.launchURL('https://aiqfome.com/'),
                  child: Image.network(
                    'https://d335luupugsy2.cloudfront.net/cms/files/233988/1692888471/\$iuyxowls9q',
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Utils.launchURL('https://aiqfome.com/'),
                  child: Image.network(
                    'https://d335luupugsy2.cloudfront.net/cms/files/233988/1692888471/\$iuyxowls9q',
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.3,
                  ),
                ),
              ],
            ),
            SelectableText(
              'Plenos',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: screenSize.aspectRatio * 50,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Utils.launchURL('https://aiqfome.com/'),
                  child: Image.network(
                    'https://d335luupugsy2.cloudfront.net/cms/files/233988/1692888471/\$iuyxowls9q',
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Utils.launchURL('https://aiqfome.com/'),
                  child: Image.network(
                    'https://d335luupugsy2.cloudfront.net/cms/files/233988/1692888471/\$iuyxowls9q',
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.3,
                  ),
                ),
              ],
            ),
            SelectableText(
              'Juniors',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: screenSize.aspectRatio * 50,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Utils.launchURL('https://aiqfome.com/'),
                  child: Image.network(
                    'https://d335luupugsy2.cloudfront.net/cms/files/233988/1692888471/\$iuyxowls9q',
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Utils.launchURL('https://aiqfome.com/'),
                  child: Image.network(
                    'https://d335luupugsy2.cloudfront.net/cms/files/233988/1692888471/\$iuyxowls9q',
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.3,
                  ),
                ),
              ],
            ),
          ],
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
