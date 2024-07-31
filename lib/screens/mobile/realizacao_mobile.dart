import 'package:flutter/material.dart';

class RealizacaoMobile extends StatefulWidget {
  const RealizacaoMobile({super.key});

  @override
  State<RealizacaoMobile> createState() => _RealizacaoMobileState();
}

class _RealizacaoMobileState extends State<RealizacaoMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    './lib/assets/realizacao/unimater.png',
                    width: screenSize.width * 0.5,
                  ),
                  Image.asset(
                    './lib/assets/realizacao/sistemas.png',
                    width: screenSize.width * 0.5,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
