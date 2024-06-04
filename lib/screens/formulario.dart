import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => FformularioState();
}

class FformularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 105, 140, 156),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Unimater',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Sistemas da informação',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Informações da faculdade/curso',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.black,
                ),
                //Inserir um pageview
              ],
            ),
          ],
        ),
      ),
    );
  }
}
