import 'package:flutter/material.dart';
import 'package:semanaacademica2024/enum/device_type.dart';
import 'package:semanaacademica2024/screens/desktop/principal_desktop.dart';
import 'package:semanaacademica2024/screens/mobile/mobile_screen.dart';
import 'package:semanaacademica2024/screens/tablet/tablet.dart';
import 'package:semanaacademica2024/utils/utils.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceType deviceType = Utils.getDeviceType(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: switch (deviceType) {
            DeviceType.mobile => const PrincipalMobile(),
            DeviceType.tablet => const PrincipalScreenTablet(),
            DeviceType.desktop => const PrincipalScreenDesktop(),
          },
        ),
      ),
    );
  }
}
