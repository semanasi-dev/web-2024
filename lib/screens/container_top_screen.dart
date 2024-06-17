import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/widgets/foguete_animado.dart';
import 'package:semanaacademica2024/screens/widgets/hover_button.dart';
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
    var screenSize = MediaQuery.of(context).size;
    bool isSmallScreen = screenSize.width < 800;

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
          padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            if (!isSmallScreen)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: buildLeftColumn(context, screenSize),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: buildRightColumn(context),
                  ),
                ],
              ),
            if (isSmallScreen)
              Column(
                children: [
                  buildLeftColumn(context, screenSize),
                  const SizedBox(height: 20),
                  buildRightColumn(context),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget buildLeftColumn(BuildContext context, Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: screenSize.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  textoComBorda(
                    '3',
                    fontSize: screenSize.width * 0.06,
                    textColor: Colors.white,
                    borderColor: const Color(0xFF935CAB),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.03,
                  ),
                  textoComBorda(
                    'SEMANA\nACADEMICA',
                    fontSize: screenSize.width * 0.025,
                    textColor: Colors.white,
                    borderColor: const Color(0xFF935CAB),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              textoComBorda(
                'O QUE NUNCA TE CONTARAM',
                fontSize: screenSize.width * 0.015,
                textColor: Colors.white,
                borderColor: const Color(0xFF935CAB),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: screenSize.width * 0.02),
                child: textoComBorda(
                  'SOBRE A SUA CARREIRA',
                  fontSize: screenSize.width * 0.015,
                  textColor: Colors.white,
                  borderColor: const Color(0xFF935CAB),
                ),
              ),
            ],
          ),
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

  Widget buildRightColumn(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Image.asset('./lib/assets/Estrelas.png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 150),
          child: FogueteAnimado(),
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

  Widget textoComBorda(String text,
      {double? fontSize, Color? textColor, Color? borderColor}) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 4
              ..color = borderColor!,
          ),
          textAlign: TextAlign.start,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: fontSize,
            color: textColor,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
