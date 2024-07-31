import 'package:flutter/material.dart';

class PatrocinadoresContainerMobile extends StatefulWidget {
  final String asset;
  const PatrocinadoresContainerMobile({
    super.key,
    required this.asset,
  });

  @override
  State<PatrocinadoresContainerMobile> createState() =>
      PatrocinadoresContainerMobileState();
}

class PatrocinadoresContainerMobileState
    extends State<PatrocinadoresContainerMobile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          width: screenSize.width * 0.6,
          height: screenSize.height * 0.30,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: Colors.white,
              width: 2.5,
            ),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF581584),
                Color(0xFF84156C),
              ],
            ),
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.asset,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
