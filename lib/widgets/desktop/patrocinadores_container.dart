import 'package:flutter/material.dart';

class PatrocinadoresContainerDesktop extends StatefulWidget {
  final String senioridade;
  final List<String> assets;
  const PatrocinadoresContainerDesktop({
    super.key,
    required this.senioridade,
    required this.assets,
  });

  @override
  State<PatrocinadoresContainerDesktop> createState() =>
      _PatrocinadoresContainerDesktopState();
}

class _PatrocinadoresContainerDesktopState
    extends State<PatrocinadoresContainerDesktop> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      children: [
        Container(
          width: screenSize.width * 0.53,
          padding: const EdgeInsets.only(
            bottom: 25,
          ),
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                widget.senioridade,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.04,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jura',
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.assets[0],
                      width: 250,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.assets[1],
                      width: 250,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.assets[2],
                      width: 250,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
