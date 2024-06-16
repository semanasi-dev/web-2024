import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/container_home.dart';
import 'package:semanaacademica2024/screens/nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: NavBarHome(),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  './lib/assets/parallax-top.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 1050,
                ),
                Positioned.fill(
                  top: 750,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.blue],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, right: 40, left: 40),
                  child: ContainerHome(),
                ),
              ],
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.white.withOpacity(0.9)],
                ),
              ),
            ),
            Container(
              height: 500,
              color: Colors.white,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.blue.withOpacity(0.9)],
                ),
              ),
            ),
            Stack(children: [
              Image.asset(
                './lib/assets/background-purple.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.transparent],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
