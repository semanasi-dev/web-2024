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
            colors: [Color(0xFF8554D2), Color(0xFF3070F4)],
          ),
        ),
        child: widget.tela == PalestrantesPatrocinadores.palestrantes
            ? palestranteMobile(screenSize)
            : patrocinadorMobile(screenSize));
  }

  desktopScreen(Size screenSize) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF8554D2), Color(0xFF3070F4)],
        ),
      ),
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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PalestranteContainer(
                  palestrante: widget.palestrantes![0],
                  screenSize: screenSize * 0.020,
                  temaGrande:
                      widget.palestrantes![0].tema.length > 20 ? true : false,
                ),
                PalestranteContainer(
                  palestrante: widget.palestrantes![1],
                  screenSize: screenSize * 0.020,
                  temaGrande:
                      widget.palestrantes![1].tema.length > 20 ? true : false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  patrocinadorMobile(Size screenSize) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PatrocinadoresContainer(
          asset: './lib/assets/aiqfome.png',
        ),
        PatrocinadoresContainer(
          asset: './lib/assets/softfocus.png',
        )
      ],
    );
  }

  palestranteMobile(Size screenSize) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: screenSize.height * 0.03,
        ),
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
        SizedBox(
          height: screenSize.height * 0.03,
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: PalestranteContainer(
                  palestrante: widget.palestrantes![0],
                  screenSize: screenSize * 0.020,
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.04,
              ),
              Expanded(
                child: PalestranteContainer(
                  palestrante: widget.palestrantes![1],
                  screenSize: screenSize * 0.020,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenSize.height * 0.03,
        ),
      ],
    );
  }
}
