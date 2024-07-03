import 'package:flutter/material.dart';
import 'package:semanaacademica2024/screens/info/info_desktop.dart';

class PrincipalScreenDesktop extends StatefulWidget {
  const PrincipalScreenDesktop({super.key});

  @override
  State<PrincipalScreenDesktop> createState() => _PrincipalScreenDesktopState();
}

class _PrincipalScreenDesktopState extends State<PrincipalScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [InfoDesktop()],
        ),
      ),
    );
  }
}
