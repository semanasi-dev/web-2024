import 'package:flutter/material.dart';

import 'widgets/nav_bar.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => FormularioState();
}

class FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: NavBar(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return telaTamanhoMaximo();
          } else if (constraints.maxWidth > 800 &&
              constraints.maxWidth <= 1200) {
            return telaTamnhoMedio();
          } else {
            return telaTamanhoPequeno();
          }
        },
      ),
    );
  }

  Widget telaTamanhoMaximo() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(flex: 1, child: leftColumn()),
            const SizedBox(width: 20),
            Flexible(flex: 1, child: rightContainer()),
          ],
        ),
      ),
    );
  }

  Widget telaTamnhoMedio() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: leftColumn()),
                const SizedBox(width: 20),
                Expanded(child: rightContainer()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget telaTamanhoPequeno() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            leftColumn(),
            const SizedBox(height: 20),
            rightContainer(),
          ],
        ),
      ),
    );
  }

  Widget leftColumn() {
    return Column(
      children: [
        Container(
          height: 700,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(10)),
          child: const Text(
            'Área de texto sobre a semana academica',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: 300,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: const Text(
                'Quero participar',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: 300,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: const Text(
                'Ver mais',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget rightContainer() {
    return Container(
      height: 800,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(10)),
      child: const Text(
        'fodaseeeeeeeeeee',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: NavBar(),
      ),
      body: Center(
        child: Text('404 Page Not Found'),
      ),
    );
  }
}
