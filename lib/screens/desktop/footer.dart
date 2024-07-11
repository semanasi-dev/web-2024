import 'package:flutter/material.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({super.key});

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      children: [
        Container(
          width: double.infinity,
          height: screenSize.height * 0.005,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF94DEFB),
                Color(0xFF7B51FF),
                Color(0xFFEC32F8),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.grey.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                'Semana Acadêmica 2024',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width * 0.0125,
                ),
              ),
              SelectableText(
                '© Todos os direitos reservados',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width * 0.0125,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
