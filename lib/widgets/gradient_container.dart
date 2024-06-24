import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/enum.dart';
import 'package:semanaacademica2024/model/palestrantes_model.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/palestrante_container.dart';
import 'package:semanaacademica2024/widgets/patrocinadores_container.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';

class GradientContainer extends StatefulWidget {
  final String? diaDaSemana;
  final String? ddMMyyyy;
  final List<Palestrante>? palestrantes;

  final PalestrantesPatrocinadores? tela;

  const GradientContainer({
    super.key,
    required this.tela,
    this.diaDaSemana,
    this.ddMMyyyy,
    this.palestrantes,
  });

  @override
  State<GradientContainer> createState() => GradientContainerState();
}

class GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Utils.isMobile(context)
        ? mobileScreen(screenSize)
        : desktopScreen(screenSize);
  }

  mobileScreen(Size screenSize) {
    return Container(
      width: screenSize.width * 0.65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFA64AE1), Color(0xFF3070F4)],
        ),
      ),
      child: widget.tela == PalestrantesPatrocinadores.palestrantes
          ? palestranteMobile(screenSize)
          : patrocinadorMobile(screenSize),
    );
  }

  desktopScreen(Size screenSize) {
    return Container(
      width: screenSize.width * 0.57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFA64AE1), Color(0xFF3070F4)],
        ),
      ),
      child: widget.tela == PalestrantesPatrocinadores.palestrantes
          ? palestranteDesktop(screenSize)
          : patrocinadorDesktop(screenSize),
    );
  }

  palestranteMobile(Size screenSize) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: screenSize.height * 0.03),
          TextoComBorda(
            text: widget.diaDaSemana!,
            fontFamily: 'Cristik',
            borderColor: const Color(0xFF5C8ED3),
            textColor: Colors.white,
            fontSize: screenSize.width * 0.050,
          ),
          TextoComBorda(
            text: widget.ddMMyyyy!,
            fontFamily: 'Jura',
            borderColor: const Color(0xFF5C8ED3),
            textColor: Colors.white,
            fontSize: screenSize.width * 0.040,
          ),
          SizedBox(height: screenSize.height * 0.03),
          PalestranteContainer(
            palestrante: widget.palestrantes![0],
          ),
          SizedBox(height: screenSize.height * 0.03),
          PalestranteContainer(
            palestrante: widget.palestrantes![1],
          ),
          SizedBox(height: screenSize.height * 0.03),
        ],
      ),
    );
  }

  palestranteDesktop(Size screenSize) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextoComBorda(
            text: widget.diaDaSemana!,
            fontFamily: 'Cristik',
            borderColor: const Color(0xFF5C8ED3),
            textColor: Colors.white,
            fontSize: screenSize.width * 0.020,
          ),
          TextoComBorda(
            text: widget.ddMMyyyy!,
            fontFamily: 'Jura',
            borderColor: const Color(0xFF5C8ED3),
            textColor: Colors.white,
            fontSize: screenSize.width * 0.020,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PalestranteContainer(
                  palestrante: widget.palestrantes![0],
                ),
                PalestranteContainer(
                  palestrante: widget.palestrantes![1],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  patrocinadorMobile(Size screenSize) {
    return Column(
      children: [
        Text(
          'Senior',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.width * 0.06,
            fontFamily: 'Jura',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: screenSize.height * 0.01,
        ),
        const PatrocinadoresContainer(
          asset: './lib/assets/patrocinadores/aiqfome.png',
        ),
        SizedBox(
          height: screenSize.height * 0.03,
        ),
        const PatrocinadoresContainer(
          asset: './lib/assets/patrocinadores/softfocus.png',
        ),
        SizedBox(
          height: screenSize.height * 0.015,
        ),
      ],
    );
  }

  patrocinadorDesktop(Size screenSize) {
    return Column(
      children: [
        Text(
          'Senior',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.width * 0.03,
            fontFamily: 'Jura',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PatrocinadoresContainer(
              asset: './lib/assets/patrocinadores/aiqfome.png',
            ),
            PatrocinadoresContainer(
              asset: './lib/assets/patrocinadores/softfocus.png',
            ),
            PatrocinadoresContainer(
              asset: './lib/assets/patrocinadores/softfocus.png',
            ),
          ],
        ),
      ],
    );
  }
}
