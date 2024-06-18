import 'package:flutter/material.dart';

class PalestrantesContainer extends StatefulWidget {
  String? dirAsset;

  PalestrantesContainer({super.key, this.dirAsset});

  @override
  State<PalestrantesContainer> createState() => PalestrantesContainerState();
}

class PalestrantesContainerState extends State<PalestrantesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent.withOpacity(0.9),
      ),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
                backgroundImage: AssetImage('./lib/assets/Celular.png')),
            Text('Nome do\npalestrante'),
            Text('MENTORIA DE\nCARREIRA'),
            Text('19:30PM até 20:20PM'),
          ],
        ),
      ),
    );
  }
}
