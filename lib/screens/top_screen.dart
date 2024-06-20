import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:semanaacademica2024/utils/utils.dart';
import 'package:semanaacademica2024/widgets/foguete_animado.dart';
import 'package:semanaacademica2024/widgets/hover_button.dart';
import 'package:semanaacademica2024/widgets/texto_com_borda.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerHomeTop extends StatefulWidget {
  const ContainerHomeTop({super.key});

  @override
  ContainerHomeTopState createState() => ContainerHomeTopState();
}

class ContainerHomeTopState extends State<ContainerHomeTop> {
  final List<String> items = [
    'Palestras de quem domina o assunto',
    'Troca de Ideias',
    'Networking',
    'Diversão e Jogos',
    'Sorteios e Brindes',
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //bool isSmallScreen = screenSize.width < 800;

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            './lib/assets/poligonos.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.blue],
              ),
            ),
          ),
        ),
        Center(
            child: !Utils.isMobile(context)
                ? desktopScreen(screenSize)
                : mobileScreen(screenSize)),
      ],
    );
  }

  Widget desktopScreen(Size screenSize) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 100, right: 100, top: 50, bottom: 50),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: buildLeftColumnDesktop(context, screenSize),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: buildRightColumnDesktop(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget mobileScreen(Size screenSize) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height * 0.4,
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: FogueteAnimado(mult: 0.27, isSmallScreen: true),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextoComBorda(
                        text: 'SEMANA',
                        fontFamily: 'Cristik',
                        fontSize: screenSize.width * 0.12,
                        textColor: Colors.white,
                        borderColor: const Color(0xFF935CAB),
                      ),
                      TextoComBorda(
                        text: 'ACADEMICA',
                        fontFamily: 'Cristik',
                        fontSize: screenSize.width * 0.12,
                        textColor: Colors.white,
                        borderColor: const Color(0xFF935CAB),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: Image.asset('./lib/assets/Estrelas.png'),
                  ),
                ),
              ],
            ),
          ),
          TextoComBorda(
            text: 'O QUE NUNCA TE CONTARAM',
            fontSize: screenSize.width * 0.030,
            textColor: Colors.white,
            borderColor: const Color(0xFF935CAB),
          ),
          TextoComBorda(
            text: 'SOBRE A SUA CARREIRA',
            fontSize: screenSize.width * 0.030,
            textColor: Colors.white,
            borderColor: const Color(0xFF935CAB),
          ),
          const SizedBox(height: 20),
          Text(
            'Bem vindo á semana acadêmica 2024!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.width * 0.04,
              fontFamily: 'Jura',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Já pensou em estar na vanguarda das próximas grandes inovações tecnológicas? Prepare-se para uma semana que vai despertar sua curiosidade e expandir seus horizontes com:',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenSize.width * 0.03,
              fontFamily: 'Jura',
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: items.map(
              (item) {
                return ListTile(
                  leading: const Icon(
                    Icons.circle,
                    size: 8,
                    color: Colors.white,
                  ),
                  title: Text(
                    item,
                    style: TextStyle(
                      fontSize: screenSize.width * 0.035,
                      color: Colors.white,
                      fontFamily: 'Jura',
                    ),
                  ),
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              HoverButton(
                texto: 'Quero participar',
                cores: const [
                  Color(0xFF4CC9F0),
                  Color(0xFF5458FE),
                  Color(0xFF853BF7),
                ],
                bold: true,
                fonte: 'Jura',
                fontSize: screenSize.width * 0.040,
              ),
              const SizedBox(height: 20),
              HoverButton(
                texto: 'Ver mais',
                cores: const [
                  Color(0xFF4CC9F0),
                  Color(0xFF4CC9F0),
                ],
                bold: true,
                fonte: 'Jura',
                fontSize: screenSize.width * 0.040,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLeftColumnDesktop(BuildContext context, Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: screenSize.width * 0.07),
                    child: Column(
                      children: [
                        TextoComBorda(
                          text: 'SEMANA',
                          fontFamily: 'Cristik',
                          fontSize: screenSize.width * 0.035,
                          textColor: Colors.white,
                          borderColor: const Color(0xFF935CAB),
                        ),
                        TextoComBorda(
                          text: 'ACADEMICA',
                          fontFamily: 'Cristik',
                          fontSize: screenSize.width * 0.035,
                          textColor: Colors.white,
                          borderColor: const Color(0xFF935CAB),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextoComBorda(
                    text: 'O QUE NUNCA TE CONTARAM',
                    fontSize: screenSize.width * 0.015,
                    textColor: Colors.white,
                    borderColor: const Color(0xFF935CAB),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10, left: screenSize.width * 0.02),
                    child: TextoComBorda(
                      text: 'SOBRE A SUA CARREIRA',
                      fontSize: screenSize.width * 0.015,
                      textColor: Colors.white,
                      borderColor: const Color(0xFF935CAB),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 50,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Bem vindo á semana acadêmica 2024!',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.width * 0.02,
            fontFamily: 'Jura',
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Já pensou em estar na vanguarda das próximas grandes\ninovações tecnológicas? Prepare-se para uma semana que vai\ndespertar sua curiosidade e expandir seus horizontes com:',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.width * 0.015,
            fontFamily: 'Jura',
          ),
        ),
        const SizedBox(height: 20),
        Column(
          children: items.map((item) {
            return ListTile(
              leading: const Icon(
                Icons.circle,
                size: 8,
                color: Colors.white,
              ),
              title: Text(
                item,
                style: TextStyle(
                  fontSize: screenSize.width * 0.015,
                  color: Colors.white,
                  fontFamily: 'Jura',
                ),
              ),
            );
          }).toList(),
        ),
        Container(
          padding: EdgeInsets.only(
              left: screenSize.width * 0.03, top: screenSize.height * 0.01),
          child: Column(
            children: [
              HoverButton(
                texto: 'Quero participar',
                cores: const [
                  Color(0xFF4CC9F0),
                  Color(0xFF5458FE),
                  Color(0xFF853BF7),
                ],
                bold: true,
                fonte: 'Jura',
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, '/inscricoes');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CC9F0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.015,
                        fontFamily: 'Jura',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildRightColumnDesktop(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Image.asset('./lib/assets/Estrelas.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: FogueteAnimado(
            mult: 0.7,
            isSmallScreen: MediaQuery.of(context).size.width < 800,
          ),
        ),
      ],
    );
  }

  void launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
