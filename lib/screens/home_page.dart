import 'package:flutter/material.dart';
import 'widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
            return telaTamanhoMedio();
          } else {
            return telaTamanhoPequeno();
          }
        },
      ),
    );
  }

  Widget telaTamanhoMaximo() =>
      buildResponsiveLayout(40, MainAxisAlignment.spaceBetween);
  Widget telaTamanhoMedio() =>
      buildResponsiveLayout(20, MainAxisAlignment.center);
  Widget telaTamanhoPequeno() =>
      buildResponsiveLayout(10, MainAxisAlignment.center, isSmall: true);

  Widget buildResponsiveLayout(double padding, MainAxisAlignment alignment,
      {bool isSmall = false}) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: isSmall
            ? Column(
                children: [
                  leftColumn(),
                  const SizedBox(height: 20),
                  rightContainer(),
                ],
              )
            : Row(
                mainAxisAlignment: alignment,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(flex: 1, child: leftColumn()),
                  SizedBox(width: isSmall ? 10 : 20),
                  Flexible(flex: 1, child: rightContainer()),
                ],
              ),
      ),
    );
  }

  Widget leftColumn() {
    return Column(
      children: [
        buildContainer('Área de texto sobre a semana acadêmica', 700,
            onTap: () {}),
        const SizedBox(height: 20),
        buildButton('Quero participar', onTap: () {}),
        const SizedBox(height: 20),
        buildButton('Ver mais', onTap: () {}),
      ],
    );
  }

  Widget rightContainer() {
    return buildContainer('fodaseeeeeeeeeee', 800);
  }

  Widget buildContainer(String text, double height, {Function()? onTap}) {
    return Container(
      height: height,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 18.0),
        ),
      ),
    );
  }

  Widget buildButton(String text, {Function()? onTap}) {
    return SizedBox(
      height: 50,
      width: 300,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
