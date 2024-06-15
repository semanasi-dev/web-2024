import 'package:flutter/material.dart';

class ContainerHome extends StatefulWidget {
  const ContainerHome({super.key});

  @override
  ContainerHomeState createState() => ContainerHomeState();
}

class ContainerHomeState extends State<ContainerHome> {
  final List<String> items = [
    'Palestras de quem domina o assunto',
    'Troca de Ideias',
    'Networking',
    'Diversão e Jogos',
    'Sorteios e Brindes',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 870,
      color: Colors.transparent,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          textoComBorda(
                            '3',
                            fontSize: 70,
                            textColor: Colors.white,
                            borderColor: const Color(0xFF935CAB),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          textoComBorda(
                            'SEMANA\nACADEMICA',
                            fontSize: 35,
                            textColor: Colors.white,
                            borderColor: const Color(0xFF935CAB),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      textoComBorda(
                        'O QUE NUNCA TE CONTARAM',
                        fontSize: 18,
                        textColor: Colors.white,
                        borderColor: const Color(0xFF935CAB),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 30),
                        child: textoComBorda(
                          'SOBRE A SUA CARREIRA',
                          fontSize: 18,
                          textColor: Colors.white,
                          borderColor: const Color(0xFF935CAB),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Bem vindo á semana acadêmica 2024!',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Já pensou em estar na vanguarda das próximas grandes\ninovações tecnológicas? Prepare-se para uma semana que vai\ndespertar sua curiosidade e expandir seus horizontes com:',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Column(
                    children: items.map((item) {
                      return ListTile(
                        leading: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Colors.white,
                        ),
                        title: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 45),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 250,
                          height: 50,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/inscricoes');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Colors.blue, Colors.purple],
                                ),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Inscreva-se!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 250,
                          height: 50,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/inscricoes');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Inscreva-se!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
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
