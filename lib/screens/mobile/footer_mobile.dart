import 'package:flutter/material.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                'Semana Acadêmica 2024',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SelectableText(
                '© Todos os direitos reservados',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
