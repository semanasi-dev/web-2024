import 'package:flutter/material.dart';

class RealizacaoDesktop extends StatefulWidget {
  const RealizacaoDesktop({super.key});

  @override
  State<RealizacaoDesktop> createState() => _RealizacaoDesktopState();
}

class _RealizacaoDesktopState extends State<RealizacaoDesktop> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('./lib/assets/realizacao/unimater.png'),
              Image.asset('./lib/assets/realizacao/sistemas.png'),
            ],
          ),
        )
      ],
    );
  }
}
