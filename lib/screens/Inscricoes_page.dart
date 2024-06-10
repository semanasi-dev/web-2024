import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/widgets/nav_bar.dart';

class Inscricoes extends StatefulWidget {
  const Inscricoes({super.key});

  @override
  State<Inscricoes> createState() => InscricoesState();
}

class InscricoesState extends State<Inscricoes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: NavBar(),
      ),
    );
  }
}
